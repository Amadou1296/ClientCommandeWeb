using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ClientCommandeWeb
{
    public partial class Commande : System.Web.UI.Page
    {
        
        static int indexEdit;
        
        static List<Produits> produitList = new List<Produits>();
        static List<commande> commandeList = new List<commande>();
        SqlDataAdapter sqlDataAdapter;
        SqlCommand cmd = new SqlCommand();
        DataSet dataSet;
        DataTable dataTable = new DataTable();
        SqlConnection con = new SqlConnection(@"data source=DESKTOP-KCDMUM1\SQLEXPRESS; Initial catalog=Northwind; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!Page.IsPostBack)
            {
                displayProductToAdd();
                display_commands();
                mesList(CustomerList, "Customers", "customerID", "customerid");
                mesList(EmployeList, "employees", "firstname", "employeeid");
                mesList(ProduitList1, "products", "productname", "productid");

                //a revoir 
                GridView2.DataSource = produitList;
                GridView2.DataBind();

                
            }
        }

        protected void mesList(DropDownList dropDownList, string tableName,string col, string colval)
        {
            cmd.CommandText = "select * from "+ tableName;
            cmd.Connection = con;
            sqlDataAdapter = new SqlDataAdapter(cmd);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            dropDownList.DataTextField = dataSet.Tables[0].Columns[col].ToString();

            dropDownList.DataValueField = dataSet.Tables[0].Columns[colval].ToString();

            

            dropDownList.DataSource = dataSet.Tables[0];      //assigning datasource to the dropdownlist
            dropDownList.DataBind();  //binding dropdownlist
            con.Close();

        }

        protected void ajouter_Click(object sender, EventArgs e)
        {
            displayProductToAdd();
        }

        protected void displayProductToAdd()
        {
            if (CustomerList.Text != "" && EmployeList.SelectedValue != "" && OrderDate.Value != "" && RequiredDate.Value != "" &&
                ProduitList1.Text != "" && freight.Value != "" && prixu.Value != "" && quantite.Value != "" && discount.Value != "")
            {
                commande com = new commande(CustomerList.Text, EmployeList.SelectedValue, OrderDate.Value, RequiredDate.Value, ProduitList1.Text,
                    Int32.Parse(freight.Value), Int32.Parse(prixu.Value), Int32.Parse(quantite.Value), Int32.Parse(discount.Value));
                /*Produits p = new Produits(Int32.Parse(freight.Value), produitname.SelectedValue,
                    Int32.Parse(prixu.Value), Int32.Parse(quantite.Value), Int32.Parse(discount.Value));*/

                if (com != null)
                {

                    commandeList.Add(com);
                    if (commandeList.Count > 0)
                    {
                        /*CustomerList.Enabled = false;
                        EmployeList.Enabled = false;
                        orderdate1.Visible = false;*/
                        Button2.Visible = true;
                        text.Text = "Liste des produits à ajouter :";
                    }


                    //a revoir 
                    GridView2.DataSource = commandeList;
                    GridView2.DataBind();

                }
                else
                {
                    string script1 = "alert(\"echec ajout produit !\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script1, true);
                }
                string script = "alert(" + commandeList.Count + ");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            

        }

        protected void display_commands()
        {
            cmd.CommandText = "select o.OrderID, c.CustomerID as Clients, e.FirstName as Employe, p.ProductName as produit, o.OrderDate, O.ShipAddress, od.UnitPrice from Orders o, [Order Details] od, Products p, Customers c, Employees e where o.OrderID=od.OrderID and od.ProductID=p.ProductID and o.CustomerID=c.CustomerID and o.EmployeeID=e.EmployeeID";
            cmd.Connection = con;
            sqlDataAdapter = new SqlDataAdapter(cmd);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            cmd.ExecuteNonQuery();

            /*GridView1.Columns.Add(bf_supp);
            GridView1.Columns.Add(bf_mod);*/
            GridView1.DataSource = dataSet;
            GridView1.DataBind();
            con.Close();
        }


        protected int insert_products(commande commandes)
        {
            int res = 0;
            
            cmd.CommandText = "Insert into Orders (CustomerID, EmployeeID,  OrderDate, RequiredDate, Freight) values ('" + commandes.CustomerID.ToString() + "', " + Int32.Parse(commandes.EmployeeName) + ",' " + Convert.ToDateTime(commandes.OrderDate) + "',' " + Convert.ToDateTime(commandes.RequiredDate) + "'," + commandes.Freight + ");";

            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();

          
            if (i > 0)
            {
                SqlCommand sqlCommand = new SqlCommand("select max(OrderID) from Orders", con);
                int _id = (int)sqlCommand.ExecuteScalar();
                cmd.CommandText = "Insert into [Order Details] (OrderID,ProductID, UnitPrice, Quantity, Discount) values("+_id+"," + commandes.ProductName + ", " + commandes.UnitPrice + ", " + commandes.Quantity + ", 0.5)";

                cmd.Connection = con;
                int j = cmd.ExecuteNonQuery();

                if (j > 0) res = 1;
                        
            }
            
            return res;
                        
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            int result=0;
            for(int i = 0; i < commandeList.Count; i++)
            {
                result = result + insert_products(commandeList[i]);
            }

            con.Close();
            
            if (result == commandeList.Count)
            {
                string script1 = "alert(\""+result+" commande(s) inseré avec succés !!!\")";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script1, true);

                commandeList.Clear();
            }
            

            commandeList.Clear();
        }

        protected void gridview_delete(object sender, GridViewDeletedEventArgs e)
        {

        }
        protected void gridview_edit(object sender, GridViewEditEventArgs e)
        {
            Session["index"] = e.NewEditIndex;
            //int orderID = Int.Parse( GridView1.Rows[indexEdit].Cells[0].Text);
            string client = GridView1.Rows[e.NewEditIndex].Cells[2].Text;
            string employe = GridView1.Rows[indexEdit].Cells[2].Text;
            string produit = GridView1.Rows[indexEdit].Cells[3].Text;
            string orderDate = GridView1.Rows[e.NewEditIndex].Cells[0].Text;
            string shipAdress = GridView1.Rows[indexEdit].Cells[5].Text;
            string unitPrice = GridView1.Rows[indexEdit].Cells[6].Text;
            string script1 = "alert(\"" + client + "\")";
            /*ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script1, true);*/
            GridView1.EditIndex = e.NewEditIndex;
            display_commands();
            
        }
        protected void gridview_cancel(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            display_commands();
        }
        protected void gridview_updating(object sender, GridViewUpdateEventArgs e)
        {
            string client = GridView1.Rows[e.RowIndex].Cells[2].Text;
            string employe = GridView1.Rows[indexEdit].Cells[2].Text;
            string produit = GridView1.Rows[indexEdit].Cells[3].Text;
            string orderDate = GridView1.Rows[indexEdit].Cells[0].Text;
            string shipAdress = GridView1.Rows[indexEdit].Cells[5].Text;
            string unitPrice = GridView1.Rows[indexEdit].Cells[6].Text;
            string script1 = "alert(\"" + client + "\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script1, true);

            GridView1.EditIndex = -1;
            display_commands();
        }
        protected void gridview_update(object sender, GridViewUpdatedEventArgs e)
        {

            string client = GridView1.Rows[3].Cells[2].Text;
            string employe = GridView1.Rows[indexEdit].Cells[2].Text;
            string produit = GridView1.Rows[indexEdit].Cells[3].Text;
            string orderDate = GridView1.Rows[indexEdit].Cells[0].Text;
            string shipAdress = GridView1.Rows[indexEdit].Cells[5].Text;
            string unitPrice = GridView1.Rows[indexEdit].Cells[6].Text;
            string script1 = "alert(\"" + client + "\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script1, true);
            GridView1.EditIndex = -1;
            display_commands();
        }

        protected void Annuler(object sender, EventArgs e)
        {

            GridView1.EditIndex = -1;
            display_commands();
        }

        protected void Modifier(object sender, EventArgs e)
        {
            int index =  ((int) Session["index"]);
            //int orderID = Int32.Parse( GridView1.Rows[indexEdit].Cells[0].Text);
            string client = GridView1.Rows[index].Cells[3].Text;
            string employe = GridView1.Rows[indexEdit].Cells[2].Text;
            string produit = GridView1.Rows[index].Cells[3].Text.ToString();
            string orderDate = GridView1.Rows[indexEdit].Cells[0].Text;
            string shipAdress = GridView1.Rows[indexEdit].Cells[5].Text;
            string unitPrice = GridView1.Rows[indexEdit].Cells[6].Text;
            string script1 = "alert(\"" + produit + " \")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script1, true);
            GridView1.EditIndex = -1;
            display_commands();
        }

        protected void Supprimer(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            display_commands();
        }





    }
}
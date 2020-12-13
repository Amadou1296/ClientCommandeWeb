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
        public string requete; 
        
        static int indexEdit=2;
        
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
                //display_commands();
                displayProductToAdd();
                mesList(CustomerList, "Customers", "customerID", "customerid");
                mesList(EmployeList, "employees", "firstname", "employeeid");
                mesList(ProduitList1, "products", "productname", "productid");
                //mesList(Search, "Customers", "customerID", "customerid");
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

        protected void display_commands()
        {
            cmd.CommandText = "SELECT [Order Details].*, Orders.* FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID";
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
                        Button3.Visible = true;
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

        protected void annule_Click(object sender, EventArgs e)
        {
            commandeList.Clear();
            displayProductToAdd();

            string script1 = "alert(\" Vous avez annulé " + commandeList.Count + " commande(s) !!!\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script1, true);
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[1];
            int orderID = Int32.Parse( cell.Text);

            cmd.CommandText = "delete from [Order Details] where OrderID="+orderID;

            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();


        }
    }
}

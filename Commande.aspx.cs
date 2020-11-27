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
        List<Produits> produitList = new List<Produits>();
        SqlDataAdapter sqlDataAdapter;
        SqlCommand cmd = new SqlCommand();
        DataSet dataSet;
        DataTable dataTable = new DataTable();
        SqlConnection con = new SqlConnection(@"data source=DESKTOP-SJR4UK4\SQLEXPRESS; Initial catalog=Northwind; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if(!Page.IsPostBack)
            {
                mesList(CustomerList, "Customers", "customerID");
                mesList(EmployeList, "employees", "employeeID");
                mesList(produitname, "products", "productname");
            }
        }

        protected void mesList(DropDownList dropDownList, string tableName,string col)
        {
            cmd.CommandText = "select * from "+ tableName;
            cmd.Connection = con;
            sqlDataAdapter = new SqlDataAdapter(cmd);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            dropDownList.DataTextField = dataSet.Tables[0].Columns[col].ToString();

            dropDownList.DataValueField = dataSet.Tables[0].Columns[col].ToString();

            dropDownList.DataSource = dataSet.Tables[0];      //assigning datasource to the dropdownlist
            dropDownList.DataBind();  //binding dropdownlist
            con.Close();

        }

        protected void ajouter_Click(object sender, EventArgs e)
        {
            Produits p = new Produits(Int32.Parse(freight.Value), produitname.SelectedValue,
                Int32.Parse(prixu.Value), Int32.Parse(quantite.Value), Int32.Parse(discount.Value));

            if(p != null)
            {
                string script = "alert(\"produit ajouter avec succes !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                produitList.Add(p);
                if (produitList.Count > 0)
                {
                    CustomerList.Enabled = false;
                    EmployeList.Enabled = false;
                    orderdate1.Visible = false;
                }

                for (int i = 0; i < produitList.Count; i++)
                {
                    //a revoir 
                    GridView2.DataSource = produitList;
                    GridView2.DataBind();

                    /*if (mesproduit.Value.Equals(""))
                    {

                        mesproduit.Value = "\n" + produitList[i].Productname;
                    }
                    else
                        mesproduit.Value = mesproduit.Value + " " + produitList[i].Productname + "\n";*/


                    CustomerList.Enabled = false;
                }
            }
            else
            {
                string script = "alert(\"echec ajout produit !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }

            
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            
        }
    }
}
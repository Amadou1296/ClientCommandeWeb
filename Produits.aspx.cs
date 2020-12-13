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
    public partial class Produits1 : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlDataAdapter sqlDataAdapter;
        SqlCommand cmd = new SqlCommand();
        DataSet dataSet;
        DataTable dataTable = new DataTable();
        SqlConnection con = new SqlConnection(@"data source=DESKTOP-KCDMUM1\SQLEXPRESS; Initial catalog=Northwind; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!Page.IsPostBack)
            {
                ///displayProducts();
            }
        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        

        protected void displayProducts()
        {
            

            /*ButtonField bf_supp = new ButtonField();
            bf_supp.Text = "supprimer";
            bf_supp.ButtonType = ButtonType.Button;
            bf_supp.CommandName = "cmd_supp";
            ButtonField bf_mod = new ButtonField();
            bf_mod.Text = "modifier";
            bf_mod.ButtonType = ButtonType.Button;
            bf_mod.CommandName = "cmd_mod";*/
            cmd.CommandText = "select * from Products";
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}
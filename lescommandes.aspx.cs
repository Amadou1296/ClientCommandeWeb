using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientCommandeWeb
{
    public partial class lescommandes : System.Web.UI.Page
    {
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
            if (!Page.IsPostBack)
            {
                display_commands();
               
            }
        }

        protected void display_commands()
        {
            cmd.CommandText = "select * from Orders o join [Order Details] od on o.OrderID=od.OrderID";
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
    }
}
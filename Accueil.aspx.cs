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
    public partial class Accueil : System.Web.UI.Page
    {
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
                getDate();
            }
        }

        public void delete_click(object sender, EventArgs e)
        {
            
        }

        public void update_click(object sender, EventArgs e)
        {

        }

        protected void insert_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "insert into Customers values('" + CustomerID.Text + "','" + CompanyName.Text + "','" + ContactName.Text + "'," +
                "'" + ContactTitle.Text + "','" + Address.Text + "','" + City.Text + "','" + Region.Text + "','" + PostalCode.Text + "'," +
                "'" + Country.Text + "'," + Phone.Text + "," + Fax.Text + ")";

            cmd.Connection = con;
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {

                string script = "alert(\"Inscription Reussi !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                string script = "alert(\"Echec de l'Inscription !\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }

            getDate();
        }

        //recuperer les donnees
        protected void getDate()
        {
            cmd.CommandText = "select * from customers";
            cmd.Connection = con;
            sqlDataAdapter = new SqlDataAdapter(cmd);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = dataSet;
            GridView1.DataBind();
            con.Close();
        }

       /* protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            getDate();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }*/
    }
}
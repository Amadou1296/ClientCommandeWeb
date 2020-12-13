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

        static int indexEdit;
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
            }
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

            //getDate();
        }

        protected void Modifier(object sender, EventArgs e)
        {

        }

    }
}
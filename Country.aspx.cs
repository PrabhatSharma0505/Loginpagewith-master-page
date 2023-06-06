using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loginpage
{
    public partial class Country : System.Web.UI.Page
    {
        SqlConnection abc = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Form;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from Country", abc);

            abc.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();


            abc.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into City(CountryName) values('" + TextBox2.Text + "') ", abc);
            abc.Open();
            if (string.IsNullOrEmpty(TextBox2.Text) || (String.IsNullOrEmpty(TextBox2.Text)))
            {
            }
            else

            {
                try
                {
                    cmd.ExecuteNonQuery();

                }

                catch (SqlException ex)
                {

                }
            }

            abc.Close();

        }

    }
}

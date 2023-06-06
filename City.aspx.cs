using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loginpage
{
    public partial class City : System.Web.UI.Page
    {
        SqlConnection abc = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Form;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into City(CityName) values('" + TextBox1.Text + "') ", abc);
            abc.Open();
            if (string.IsNullOrEmpty(TextBox1.Text) || (String.IsNullOrEmpty(TextBox1.Text)))
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from City", abc);

            abc.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();


            abc.Close();
        }


    }
}
        
    
    

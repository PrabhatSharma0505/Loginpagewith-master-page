using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Loginpage
{
    public partial class State : System.Web.UI.Page
    {
        SqlConnection abc = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Form;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into state(stateName) values('" + TextBox1.Text + "') ", abc);
            abc.Open();
            if (string.IsNullOrEmpty(TextBox1.Text) || (String.IsNullOrEmpty(TextBox1.Text) ))
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
            SqlCommand cmd = new SqlCommand("Select*from state", abc);

            abc.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();


            abc.Close();
        }


    }
}

        
    
    

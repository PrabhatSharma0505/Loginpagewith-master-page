using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loginpage.aspx.cs
{
    public partial class loginpage : System.Web.UI.Page
    {
        SqlConnection abc = new SqlConnection("Data Source=DESKTOP-JIRQ6CH\\SQLEXPRESS;Initial Catalog=Form;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        



        protected void Button1_Click(object sender, EventArgs e)
        {
            abc.Open();


            SqlCommand cmd = new SqlCommand("insert into login( username,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "') ", abc);

            if (string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text) || (String.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text)))
            {
                if (String.IsNullOrEmpty(TextBox1.Text) && String.IsNullOrEmpty(TextBox2.Text))
                {
                    TextBox1.Text = "Invalid Name ";
                    this.TextBox1.ForeColor = Color.Red;
                    TextBox2.Text = "Invalid  password";
                    this.TextBox2.ForeColor = Color.Red;
                }
                else
                {
                    if (String.IsNullOrEmpty(TextBox1.Text))
                    {
                      
                        TextBox2.Text = " ";
                        TextBox2.Text = "Enter  password";
                        this.TextBox2.ForeColor = Color.Red;
                    }
                    else
                    {
                       
                        TextBox1.Text = "";
                        TextBox1.Text = "Enter Name ";
                        this.TextBox1.ForeColor = Color.Red;

                    }
                }


            }
            else
            {
                string a = TextBox1.Text;
                string b = TextBox2.Text;
                
                SqlCommand cmd1 = new SqlCommand("select * from login  where  username = '" + a + "' and Password = '" + b + "'", abc);
                SqlDataReader sdr = cmd.ExecuteReader();
                try
                {
                    if (sdr.Read())
                    {     
                        Server.Transfer("Site.master");
                    }
                    else
                    {
                        TextBox1.Text = " ";
                        TextBox2.Text = "";
                        Label3.Text = "Invalid name or password";
                        this.Label3.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    TextBox1.Text = ex.Message;
                }

            }
            abc.Close();
        }





        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from login", abc);

            abc.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            GridView1.DataSource = sqlDataReader;
            GridView1.DataBind();

            abc.Close();

        }
    }
}

   





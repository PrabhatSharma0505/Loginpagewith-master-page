using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loginpage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                TxtName.Focus();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            TxtName.Text = TxtPwd.Text = "";
            TxtName.Focus();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisablePrintAndScreenShotFromWindow
{
    public partial class Confidential : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            lblMessage.Text = "Welcome, " + name + "! Your information is confidential.";
        }
    }
}
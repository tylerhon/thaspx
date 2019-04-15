using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class borrower : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        fName.Text = "";
        lName.Text = "";
        phoneNum.Text = "";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "Thank you for your submission.";
    }
}
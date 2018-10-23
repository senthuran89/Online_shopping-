using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_AddNewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        int row = int.Parse(Customer.getvalcount("Select Count (*) from UserLoginDetail where UserName='" + TextBox6.Text.ToString() + "'"));
        if (row == 0)
        {
            if (TextBox7.Text == TextBox3.Text)
            {
                Label15.Text = "Active this username";
                DataAccess.Adduser(TextBox6.Text.ToString(), TextBox7.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString());
            }
            else
                Label15.Text = "Check the PassWord";
        }
        else
            Label15.Text = "it's user  Available";
    }
}

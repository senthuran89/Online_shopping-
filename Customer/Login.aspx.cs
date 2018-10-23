using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Customer_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
     
    }
    
    protected void Button14_Click1(object sender, ImageClickEventArgs e)
    {
 Response.Redirect("~/Customer/CustomerRegister.aspx");
    }
    protected void Button11_Click1(object sender, ImageClickEventArgs e)
    { if(TextBox1 .Text!="")
    {
        try
        {
            Session["un"] = TextBox1.Text.ToString();
            SqlDataReader dr1 = Customer.GetCategory("SELECT Password,CustomerID,CustomerFirstName,CustomerCountry,CustomerEmail FROM Customer where UserName='" + TextBox1.Text.ToString() + "'");
            while (dr1.Read())
            {
                Label3.Text = dr1.GetValue(0).ToString();
                Session["cusid"] = dr1.GetValue(1).ToString();
                Session["cname"] = dr1.GetValue(2).ToString();
                Session["ccountry"] = dr1.GetValue(3).ToString();
                Session["cmail"] = dr1.GetValue(4).ToString();
            }

            if (Label3.Text == TextBox2.Text)
            {

                //Response.Redirect("~/Customer/OrderStatus.aspx");
                Response.Redirect("~/Customer/Payment.aspx");
                Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

            }

            else
            {
                Label4.Text = "ReEnter Password And UserName";
            }
        }
        catch
        {
            Label4.Text = "ReEnter Password And UserName";
        }
        }
    else
          Label4.Text = "Enter userName";
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Text = "";
        TextBox2 .Text =""; 
    }
}

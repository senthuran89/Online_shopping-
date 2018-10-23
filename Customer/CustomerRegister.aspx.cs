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

public partial class Customer_CustomerRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label20.Text = "";
            Label21.Text = "";
            Label22.Text = "";
            Label23.Text = "";
            CheckBox1.Checked = false;
        }
        
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int val = int.Parse(Customer.getvalcount("Select Count (*) from Customer where UserName='" + user.Text.ToString() + "'"));

            int val1 = int.Parse(Customer.getvalcount("Select Count (*) from Customer where CustomerEmail='" + email.Text.ToString() + "'"));

            if (val1 == 0)
            {
                if (val == 0)
                {
                    if (CheckBox1.Checked == true)
                    {

                        if (email.Text == TextBox8.Text)
                        {
                            if (password.Text == TextBox11.Text)
                            {
                                Customer.Addcustomerdetails(1, fname.Text.ToString(), lname.Text.ToString(), address.Text.ToString(), city.Text.ToString(), state.Text.ToString(), count.Text.ToString(), zip.Text.ToString(), email.Text.ToString(), phone.Text.ToString(), password.Text.ToString(), user.Text.ToString());
                                Label17.Text = Customer.CustomerID1.ToString();
                                Session["cusid"] = Customer.CustomerID1.ToString();
                                Session["cname"] = fname.Text.ToString();
                                Session["cmail"] = email.Text.ToString();
                                Session["ccountry"] = count.Text.ToString();
                                Response.Redirect("~/Customer/Payment.aspx");
                                Label20.Text = "";
                                Label21.Text = "";
                                Label22.Text = "";
                                Label23.Text = "";
                            }
                            else
                            {
                                Label20.Text = "Check Password";
                                Label21.Text = "Check Password ReEnter";
                            }
                        }
                        else
                        {
                            Label22.Text = "Check Email";
                            Label23.Text = "Check Email ReEnter";
                        }


                    }
                    else
                        Label17.Text = "Checked the Agree Option";
                }
                else
                {
                    Label18.Text = "Available";
                }
            }
            else
            {
                Label19.Text = "Available";
            }
        }

        catch { }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/CustomerRegister.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int val = int.Parse(Customer.getvalcount("Select Count (*) from Customer where CustomerEmail='" + email.Text.ToString() + "'"));

            if (val == 0)
            {
                Label19.Text = "Accpted";

            }
            else
                Label19.Text = "Available";
        }
        catch
        {
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int val = int.Parse(Customer.getvalcount("Select Count (*) from Customer where UserName='" + user.Text.ToString() + "'"));

            if (val == 0)
            {
                Label18.Text = "Accpted";

            }
            else
                Label18.Text = "Available";
        }
        catch { }
    }
}

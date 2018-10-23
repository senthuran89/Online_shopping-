using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // TreeView1.Enabled = false;
           // Label6.Visible = false;
            Button13.Visible = true;
        }
        //else
        //{
        //    TreeView1.Enabled = true;
        //}
    }

    public string HeadingMessage
    {
        set {Label2.Text = value; }
    }

    public string ErrorMessage
    {
        set { Label9.Text  = value; }
    }

    public string Message
    {
        set { Label9.Text = value; }
    }
    protected void Button11_Click(object sender, ImageClickEventArgs e)
    {
       // TreeView1.Enabled = false;
        //if (TextBox1.Text != "")
        //{
        //    try
        //    {
        //        // Session["un"] = TextBox1.Text.ToString();
        //        SqlDataReader dr1 = Customer.GetCategory("SELECT Password,UserName,UserType FROM UserLoginDetail where UserName='" + TextBox1.Text.ToString() + "'");
        //        while (dr1.Read())
        //        {
        //            Label6.Text = dr1.GetValue(0).ToString();
        //            Session["cname"] = dr1.GetValue(1).ToString();
        //            Session["ctype"] = dr1.GetValue(2).ToString();

        //        }

        //        if (Label6.Text == TextBox2.Text)
        //        {
                   
        //                TreeView1.Enabled = true;
        //                //Response.Redirect("~/Customer/OrderStatus.aspx");
        //                //Response.Redirect("~/Admin/Orderdetail.aspx");
        //                Label8.Text = Session["cname"].ToString();
        //                Button13.Visible = true;
        //                Panel1.Visible = false;
                    
        //            // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

        //        }

        //        else
        //        {
        //            Label7.Text = "ReEnter Password And UserName";
        //        }
        //    }
        //    catch
        //    {
        //        Label7.Text = "ReEnter Password And UserName";
        //    }
        //}
        //else
        //    Label7.Text = "Enter userName";
    }
    protected void Button12_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        //TreeView1.Enabled = true;

    }
    protected void Button13_Click(object sender, ImageClickEventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Redirect("~/Admin/home.aspx");
            TreeView1.Enabled = false;
        }
    }
}

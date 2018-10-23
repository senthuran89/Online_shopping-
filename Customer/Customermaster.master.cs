using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Customer_Customermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // Button7.Enabled = false;
                        //if (Session["un"] == "")
            //{
            //    Button13.Enabled = false;


            //}
            //else
            //{
            //    Button13.Enabled = true ;
            //    Button13.Text = "LogOff" + Session["un"].ToString();
            //}
                        //Panel1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Home.aspx"); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/adminlogin.aspx"); 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/SupplierLogin.aspx"); 
  
    }
    
   
    
    
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Help.aspx");
    }
   
    protected void Button_Click(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/signin.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/signin.aspx");
    }

    public string logMessage
    {
        
        set { Button13 .Text = value; }
        
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Button7.Enabled = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/Home.aspx"); 
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/Poductview.aspx");
    }
    protected void Button7_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/signin.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/Aboutus.aspx");
    }
   
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/Contract.aspx");
    }
}

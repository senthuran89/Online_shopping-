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

public partial class Customer_OrderStatus : System.Web.UI.Page
{
    
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlDataReader dr = DataAccess.getreader("SELECT RequiredDate,ShippedDate,Orderstatus FROM CustomerPurchase where OrderID='" + TextBox1.Text.ToString() + "'");
            while (dr.Read())
            {

                Label6.Text = dr.GetValue(0).ToString();
                Label8.Text = dr.GetValue(1).ToString();
                Label4.Text = dr.GetValue(2).ToString();

            }
        }
        catch
        {
            Label9.Visible = true;
            Label9.Text = "Give Correct Track ID";
            Label6.Text = "";
            Label8.Text = "";
            Label4.Text = "";

        }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Label9.Visible = false;
                Label6.Text = "";
                Label8.Text = "";
                Label4.Text = "";
                Master.logMessage = "LogOff" + "(" + Session["un"].ToString() + ")";
            }
        }
        catch { }
    }
   
}

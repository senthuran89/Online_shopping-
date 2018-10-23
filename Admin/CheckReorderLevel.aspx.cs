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

public partial class Admin_EditSupplierOrders : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Master.HeadingMessage = "Check ReorderLevel And Add Orders";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataAccess.name = "";
       DataAccess .name=GridView1.SelectedRow.Cells[2].Text.ToString();
        //Session["name"] = Label4.Text.ToString();
               Response.Redirect("~/Admin/AddSupplierOrders.aspx");
    }
}

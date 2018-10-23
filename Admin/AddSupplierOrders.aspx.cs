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

public partial class Admin_AddSupplierOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DetailsView1.ChangeMode(DetailsViewMode.Insert);
            Label4.Text = DataAccess.name;
            Master.HeadingMessage = "Create Supplier Orders";
      
        }
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
     
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label3.Text = DataAccessForOrders.OrderID1.ToString();
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        e.NewMode = DetailsViewMode.Insert;
    }
}

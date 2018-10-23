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

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DetailsView1.ChangeMode(DetailsViewMode.Insert);
            Master.HeadingMessage = "Add New Category Page";
        }
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    DataAccess.InsertCategory(TextBox1.Text.ToString(), TextBox2.Text.ToString());
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataAccess.InsertCategory (TextBox1.Text.ToString(), TextBox2.Text.ToString());
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        e.NewMode = DetailsViewMode.Insert;
        Master.ErrorMessage = DataAccess.Error; 
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}

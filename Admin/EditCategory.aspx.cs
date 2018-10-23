using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_EditCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Master.HeadingMessage = "Edit Category Page";
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
       
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
//DataAccess.Updatecatogery  (int.Parse (TextBox3 .Text.ToString()) ,TextBox1.Text.ToString(), TextBox2.Text.ToString());
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Master.ErrorMessage = DataAccess.Error;
    }
}

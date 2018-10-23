using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Data.SqlClient  ;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_homesetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                Label9.Visible = false ;
                Label9.Text = "";
                DataSet dataSet = DataAccess.Gethomeview();
                GridView3.DataSource = dataSet.Tables["Product"];
                DataBind();
            }
            catch { }
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            Label9.Text = GridView2.SelectedRow.Cells[0].Text.ToString();
            DataAccess.homeset(int.Parse(Label9.Text.ToString()));
            DataSet dataSet = DataAccess.Gethomeview();
            GridView3.DataSource = dataSet.Tables["Product"];
            DataBind();
        }
        catch { }
      
               
    }


    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            Label9.Text = GridView3.SelectedRow.Cells[1].Text.ToString();
            DataAccess.Delhomeset(int.Parse(Label9.Text.ToString()));
            DataSet dataSet = DataAccess.Gethomeview();
            GridView3.DataSource = dataSet.Tables["Product"];
            DataBind();
        }
        catch {

          
        }
    }
}

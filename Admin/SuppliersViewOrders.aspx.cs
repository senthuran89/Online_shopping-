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

public partial class Admin_SuppliersViewOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox2.Visible = false;
            Button3.Visible = false;
            DropDownList1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Master.HeadingMessage  ="View   Product Orders  Update the Order Status";
        }
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string  SupplierName =TextBox1.Text.ToString();
       // Session["id"] = int.Parse(TextBox1.Text.ToString());
        DataSet dataSet = DataAccessForOrders.Getordersview(SupplierName);
        GridView1.DataSource = dataSet.Tables["Supplier"];
        DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        Button3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        DropDownList1.Visible = true;
        Label3.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
        //TextBox2 .Text = GridView1.SelectedRow.Cells[4].Text.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        DataAccessForOrders.UpdateorderStatus(int.Parse(Label3.Text.ToString()), DropDownList1 .Text.ToString());
        DataAccessForOrders.Updateorderqty(int.Parse(Label3.Text.ToString()), int.Parse(TextBox2.Text.ToString()));
    }
}

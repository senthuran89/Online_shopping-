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

public partial class Admin_Orderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false ;
        Label4.Visible = false;
        Label6.Visible = false;
            }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label5.Text = GridView1.SelectedRow.Cells[10].Text.ToString();
        Label6.Text = GridView1.SelectedRow.Cells[11].Text.ToString();
               int ProductId = int.Parse(Label5.Text);
        DataSet dataSet = DataaccessForCustomerorder.Getordersview(ProductId);
        GridView2.DataSource = dataSet.Tables["Supplier"];
        DataBind(); 
        Session["ORDERID"] = int.Parse(GridView1.SelectedRow.Cells[11].Text.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
     
    }
}

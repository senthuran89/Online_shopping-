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

public partial class Admin_ViewOrdes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label4.Visible = false;
            //Button1.Visible = false;
            Button3.Visible = false;
            DropDownList1.Visible = false;
            GridView2.Visible = false;
            Label5.Visible = false;
            Label18.Visible = false;
            Panel1.Visible = false;
            Button8.Visible = false;
            Master.HeadingMessage = "View Supplier Orders";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
      
      

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Label4.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            //Button1.Visible = true;
            Button3.Visible = true;
            DropDownList1.Visible = true;
            GridView2.Visible = true;
            Button8.Visible = true ;
            Label5.Visible = true;
            Label18.Visible = true;
            Panel1.Visible = true;
            int id = int.Parse(GridView1.SelectedRow.Cells[7].Text.ToString());
            DataSet dataSet = DataAccessForOrders.ordersview(id);
            GridView2.DataSource = dataSet.Tables["Supplier"];
            DataBind();
        }
        catch { 
        }

                 //Session["oid"] = int.Parse(GridView1.SelectedRow.Cells[7].Text.ToString());
        //TextBox1.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            DataAccessForOrders.UpdateorderStatus(int.Parse(Label4.Text.ToString()), DropDownList1.Text.ToString());
            DataAccessForOrders.InsertProducttransation(GridView2.SelectedRow.Cells[1].Text.ToString(), GridView2.SelectedRow.Cells[2].Text.ToString(), int.Parse(Label8.Text), double.Parse(Label7.Text), double.Parse(Label15.Text), DateTime.Parse(GridView2.SelectedRow.Cells[5].Text.ToString()));
        }
        catch
        { }
        
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        try
        {
            Label11.Text = (double.Parse(Label9.Text) * (double.Parse(TextBox1.Text) / 100)).ToString();
            Label13.Text = (double.Parse(Label11.Text) + double.Parse(Label9.Text)).ToString();
            Label15.Text = (double.Parse(Label13.Text) / double.Parse(Label7.Text)).ToString();
        }
        catch
        {
            Label11.Text = (double.Parse(Label9.Text) * (double.Parse(TextBox1.Text) / 100)).ToString();
            Label13.Text = (double.Parse(Label11.Text) + double.Parse(Label9.Text)).ToString();
            Label15.Text = (double.Parse(Label13.Text) / double.Parse(Label7.Text)).ToString();
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {
            Label7.Text = GridView2.SelectedRow.Cells[6].Text.ToString();
            Label8.Text = GridView2.SelectedRow.Cells[4].Text.ToString();
            Label9.Text = (int.Parse(Label8.Text) * double.Parse(Label7.Text)).ToString();
        }
        catch
        { }
    }
}

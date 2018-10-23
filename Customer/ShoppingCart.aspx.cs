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

public partial class Customer_ShoppingCart : System.Web.UI.Page
{
    double totalam;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                totalam = Customer.getval("select sum(Amount) from TemCart");
                Label4.Text = totalam.ToString();
                Panel1.Visible = false;
                //Button4.Visible = false ;
                Button2.Enabled = true ;
                Label3.Text = "0";
                Label4.Text = "0";
            }
            catch
            { }
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox1.Text = double.Parse(GridView1.SelectedRow.Cells[2].Text.ToString()).ToString();
            Panel1.Visible = true;
            Button2.Enabled = true ;
            Label3.Text = "0";
          
        }
        catch
        { 
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            Label3.Text = (double.Parse(TextBox1.Text.ToString()) * double.Parse(GridView1.SelectedRow.Cells[3].Text.ToString())).ToString();
            Customer.Edittemcart(GridView1.SelectedRow.Cells[1].Text.ToString(), int.Parse(TextBox1.Text.ToString()), double.Parse(Label3.Text.ToString()));
            double totalam1 = Customer.getval("select sum(Amount) from TemCart");
            Label4.Text = totalam1.ToString();
           // Button4.Visible = true;
            Button2.Enabled = false;
            TextBox1.Text = "0";

        }
        catch
        { }
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Login.aspx");
    }
}

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

public partial class Customer_Poductview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                SqlDataReader dr = Customer.GetCategory("SELECT ProductName FROM Product");
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                }
                Label3.Text = Customer.ProductID1.ToString();
                Session["pid"] = int.Parse(Label3.Text.ToString());
                //Panel1.Visible = true;
                Label2 .Visible =false  ;
                Button3.Visible = true ;
                Label3.Visible = false;
                Button4.Visible = true ;
                //ImageButton1.Enabled = true;
                Label6.Text = "0";
                Label3.Visible = false;
                TextBox2.Text = "0";
            }
        }
        catch { 
        }

    }
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {
       
       try
        {
            SqlDataReader dr1 = Customer.GetCategory("SELECT ProductID FROM Product where ProductName ='" + DropDownList1.Text.ToString() + "'");
            while (dr1.Read())
            {


                Label3.Text = dr1.GetValue(0).ToString();

            }

            //ImageButton1.Enabled = true;
            Label6.Text = "0";
        }
       
                  
            catch
            {
                //TextBox1.Text = "";
                //TextBox1.Text = "It's Not Name Available ";
            }


    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Panel1.Visible = true;
        //Panel1.Enabled = true;
        try
        {
            int i = int.Parse(TextBox2.Text.ToString());
            if (i != 0)
            {
                double total = (double.Parse(TextBox2.Text.ToString())) * (double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()));
                Label6.Text = (total).ToString() + "$";
                Customer.Addtemcart(GridView2.SelectedRow.Cells[1].Text.ToString(), int.Parse(TextBox2.Text.ToString()), double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()), double.Parse(total.ToString()));
            }
            else
            {
                Label8.Text = "Check Qty Filed";
                Label6.Text = "0";
            }

        }

        catch
        {
            Label8.Text = "Check Qty Filed";
            Label6.Text = "0";
        }
    }
  
   

      protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/Login.aspx");
    }
   
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    try
    //    {
    //        double total = (double.Parse(TextBox2.Text.ToString())) * (double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()));
    //        Label6.Text = (total).ToString() + "$";
    //        Customer.Addtemcart(GridView2.SelectedRow.Cells[1].Text.ToString(), int.Parse(TextBox2.Text.ToString()), double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()), double.Parse(total.ToString()));
    //        Button3.Visible = true;
    //        Button4.Visible = true;
    //        ImageButton1.Enabled = false;
    //    }
    //    catch
    //    {

    //        Label8.Text = "Check Qty Filed";
    //    }
    //}
    protected void Button3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Customer/ShoppingCart.aspx");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        //DetailsView1.ChangeMode(DetailsViewMode.Insert);
       
    }
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged2(object sender, EventArgs e)
    {
        try
        {
            double total = (double.Parse(GridView2.SelectedRow.Cells[9].Text.ToString())) * (double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()));
            Label6.Text = (total).ToString() + "$";
            Customer.Addtemcart(GridView2.SelectedRow.Cells[1].Text.ToString(), int.Parse(TextBox2.Text.ToString()), double.Parse(GridView2.SelectedRow.Cells[6].Text.ToString()), double.Parse(total.ToString()));
        }

        catch
        {
            Label8.Text = "Check Qty Filed";
        }
    }
}

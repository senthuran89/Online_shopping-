using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient ;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Customer_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader dr = Customer.GetCategory("SELECT CategoryName FROM Category");
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
            Label3.Visible = false;
            Label2.Visible = false ;
        }
        catch
        { }
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {

            SqlDataReader dr1 = Customer.GetCategory("SELECT CategoryID FROM Category where CategoryName ='" + DropDownList1.Text.ToString() + "'");
            while (dr1.Read())
            {
                
                Label2.Text = dr1.GetValue(0).ToString();

            }
            int CategoryID = int.Parse(Label2.Text.ToString());

            Session["catid"] = int.Parse(Label2.Text.ToString());
        }


        else
        {
            try
            {
                SqlDataReader dr1 = Customer.GetCategory("SELECT CategoryID FROM Category where CategoryName ='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                   
                    Label2.Text = dr1.GetValue(0).ToString();

                }
                int CategoryID = int.Parse(Label2.Text.ToString());

                Session["catid"] = int.Parse(Label2.Text.ToString());
            }

            catch
            {
                TextBox1.Text = "";
                TextBox1.Text = "It's Not Name Available ";

            }
        }

       
}
    
  

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label4.Visible = false;
        GridView4.Visible = false;
        try
        {
            SqlDataReader dr1 = Customer.GetCategory("SELECT CategoryID FROM Category where CategoryName ='" + GridView1.SelectedRow.Cells[1].Text.ToString() + "'");
            while (dr1.Read())
            {

                Label2.Text = dr1.GetValue(0).ToString();

            }
            int CategoryID = int.Parse(Label2.Text.ToString());
        }
        catch { 
        }
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader dr1 = Customer.GetCategory("SELECT ProductID FROM Product where ProductName ='" + GridView3.SelectedRow.Cells[1].Text.ToString() + "'");
            while (dr1.Read())
            {
                
                Label3.Text = dr1.GetValue(0).ToString();

            }
            Customer.ProductID1 = int.Parse(Label3.Text.ToString());
            Response.Redirect("Poductview.aspx");
        }
        catch { 
        }
    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader dr1 = Customer.GetCategory("SELECT ProductID FROM Product where ProductName ='" + GridView4.SelectedRow.Cells[1].Text.ToString() + "'");
            while (dr1.Read())
            {

                Label3.Text = dr1.GetValue(0).ToString();

            }
            Customer.ProductID1 = int.Parse(Label3.Text.ToString());
            Response.Redirect("Poductview.aspx");
        }
        catch
        {
        }
    }
}

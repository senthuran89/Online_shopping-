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

public partial class Admin_UpdateProduct : System.Web.UI.Page
{
    string str;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
      // 
      //{
      ////  //    SqlDataReader dr = DataAccess.getreader("SELECT CategoryName FROM Category ");
      ////  //    while (dr.Read())
      ////  //    {
      ////  //        TextBox2.Text = dr.GetValue(0).ToString();
      ////  //        str = string.Format("{0}", dr["CategoryName"]);
      ////  //        ExpensiveProductList.Items.Add(str);
      //     // DropDownList1.Items.Add(str);
      //  }
      ////
      // }
        if (!IsPostBack)
        {
            GridView1.Visible = false;
            Panel1.Visible = false;
            Button4.Visible = false;
            Button7.Visible = false;
            Label17.Visible = false;
            Label16.Visible = false;
            Master.HeadingMessage = "Add New Product Details";
            //Master.ErrorMessage = "";

        }
        //Master.ErrorMessage = DataAccess.Error;
        //
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    int id = DataAccess.getval("SELECT CategoryID FROM Category where CategoryName ='" + DropDownList1.Text.ToString() + "'");
    //    Label3.Text = id.ToString();
    //    GridView1.SelectedRow.Cells[4].Text = Label3.Text;
      
      
    //}


    protected void Button2_Click(object sender, EventArgs e)
    {
        //Label3.Text = GridView1.SelectedRow.Cells[0].Text.ToString();

        
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Label3.Text = GridView1.SelectedRow.Cells[0].Text.ToString();
    //}
    protected void DropDownList1_TextChanged(object sender, EventArgs e)
    {
       
      
    }
    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    ////{
    ////    int id = DataAccess.getval("SELECT CategoryID FROM Category where CategoryName ='" + DropDownList1.Text.ToString() + "'");
    ////    Label3.Text = id.ToString();
    ////    GridView1.SelectedRow.Cells[4].Text = Label3.Text;
      
    //}
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        GridView1.Visible = true;
        //Master.ErrorMessage = DataAccess.Error;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      //  Master.ErrorMessage = DataAccess.Error;
        try
        {
            Label17.Text = DataAccess.productID1.ToString();
            int productID = int.Parse(Label17.Text.ToString());
            if (productID == 0)

            { }
            else
            {

                DataSet dataSet = DataAccess.GetProductsview(productID);
                GridView1.DataSource = dataSet.Tables["Product"];
                               
                DataBind();
                GridView1.Visible = true;
                Button4.Visible = true;
                //Button7.Visible = true;
            }

        }
        catch { }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            Panel1.Visible = true;
            Label16.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
            int id = int.Parse(Label16.Text);
            if (id > 0)
            {
                Label7.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
                Label8.Text = string.Format("{0:f}", double.Parse(GridView1.SelectedRow.Cells[6].Text.ToString())); 
                string str1 = ((int.Parse(Label7.Text) * double.Parse(Label8.Text)).ToString()).ToString ();
                Label9.Text = string .Format ("{0:f}", double .Parse (str1 .ToString ())); //(int.Parse(Label7.Text) * double.Parse(Label8.Text)).ToString();
            }
        }
        catch
          { }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label16.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        int id = int.Parse(Label16.Text);
        DataAccess.name = "";
        DataAccess.name = GridView1.SelectedRow.Cells[2].Text.ToString();
        if (id > 0)
        {
            Button7.Visible = true;
        }
        else { 
        }
        GridView1.Visible = true;  
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        try
        {
            Label11.Text = (double.Parse(Label9.Text) * (double.Parse(TextBox1.Text) / 100)).ToString();
            Label13.Text = (double.Parse(Label11.Text) + double.Parse(Label9.Text)).ToString();
            Label15.Text = (double.Parse(Label13.Text) / double.Parse(Label7.Text)).ToString();
        }
        catch { }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            DataAccess.Updatesellingprice(int.Parse(Label16.Text), double.Parse(Label15.Text));
            int productID = int.Parse(Label17.Text.ToString());

            DataSet dataSet = DataAccess.GetProductsview(productID);
            GridView1.DataSource = dataSet.Tables["Product"];
            DataBind();
        }
        catch { }
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        Master.ErrorMessage = DataAccess.Error;
    }
}

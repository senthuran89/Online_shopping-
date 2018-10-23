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

public partial class AddProduct : System.Web.UI.Page
{
    string str, str1;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Master.HeadingMessage = "Edit Product Page";
            SqlDataReader dr = DataAccess.getreader("SELECT CategoryName FROM Category ");
            while (dr.Read())
            {
                //TextBox2.Text = dr.GetValue(0).ToString();
                str = string.Format("{0}", dr["CategoryName"]);
                DropDownList1.Items.Add(str);


            }
            SqlDataReader dr1 = DataAccess.getreader("SELECT ProductName FROM Product ");
            while (dr1.Read())
            {
                //TextBox2.Text = dr.GetValue(0).ToString();
                str1 = string.Format("{0}", dr1["ProductName"]);
                DropDownList2.Items.Add(str1);

            }
            Label6.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
            GridView3.Visible = false;
            Label7.Visible = false ;
        }
    }
    protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       string ProductName = DropDownList2.Text.ToString();

        DataSet dataSet = DataAccess.GetProductsInProductName(ProductName);
        GridView1.DataSource = dataSet.Tables["Product"];
        DataBind();
        GridView1.Visible = true;
        GridView2.Visible = true ;
        GridView3.Visible = true ;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ProductID = int.Parse(TextBox1.Text.ToString());

        DataSet dataSet = DataAccess.GetProductsInProductID(ProductID);
        GridView1.DataSource = dataSet.Tables["Product"];
        DataBind();
        GridView1.Visible = true;
        GridView2.Visible = true ;
        GridView3.Visible = true ;

        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataReader dr1 = DataAccess.getreader("SELECT CategoryID FROM Category where CategoryName ='"+DropDownList1 .Text.ToString()+"'");
        while (dr1.Read())
        {
            //TextBox2.Text = dr.GetValue(0).ToString();
                        //DropDownList2.Items.Add(str1);
            Label6.Text = dr1.GetValue(0).ToString();

        }
        int CategoryID = int.Parse(Label6    .Text.ToString());

        DataSet dataSet = DataAccess.GetProductsInCategoryID(CategoryID);
        GridView1.DataSource = dataSet.Tables["Product"];
        DataBind();
        GridView1.Visible = true;
        GridView2.Visible = true ;
        GridView3.Visible = true ;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label7.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        Session["id"] = int.Parse( GridView1.SelectedRow.Cells[1].Text.ToString());
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}

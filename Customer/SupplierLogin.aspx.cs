﻿using System;
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

public partial class Customer_SupplierLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label3.Visible = false;
        }
    }
    protected void Button11_Click(object sender, ImageClickEventArgs e)
    {

        if (TextBox1.Text != "")
        {
            try
            {
                // Session["un"] = TextBox1.Text.ToString();
                SqlDataReader dr1 = Customer.GetCategory("SELECT PassWords,UserName,SupplierName FROM Supplier where UserName='" + TextBox1.Text.ToString() + "'");
                while (dr1.Read())
                {
                    Label3.Text = dr1.GetValue(0).ToString();
                    Session["sname"] = dr1.GetValue(1).ToString();
                    Session["stype"] = dr1.GetValue(2).ToString();

                }

                if (Label3.Text == TextBox2.Text)
                {

                    //TreeView1.Enabled = true;
                    //Response.Redirect("~/Customer/OrderStatus.aspx");
                    Response.Redirect("~/Customer/SuppliersViewOrders.aspx");
                    Label4.Text = Session["cname"].ToString();
                    //Button13.Visible = true;
                    // Panel1.Visible = false;

                    // Master.logMessage = "LogOff" + "(" + TextBox1.Text.ToString() + ")";

                }

                else
                {
                    Label4.Text = "ReEnter Password And UserName";
                }
            }
            catch
            {
                Label4.Text = "ReEnter Password And UserName";
            }
        }
        else
            Label4.Text = "Enter userName";
    }
}

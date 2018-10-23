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

public partial class Customer_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Label6.Text = Session["cusid"].ToString();
                Label6.Visible = false;
                Label9.Text = Session["cname"].ToString();
                Label11.Text = Session["cmail"].ToString();
                Label15.Text = Session["ccountry"].ToString();
                TextBox4.Text = System.DateTime.Today.ToString("MM/dd/yyyy");
                TextBox4.Visible = false;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Visible = false;
                Label16.Visible = false;
                Label7.Visible = false;
                  Label17.Visible=false;
            }
        }
        catch { }

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
    //    int CardType = DropDownList1.SelectedIndex;
    //    if (TextBox2 .Text.Length == 0)
    //    {
            
    //        Label16 .Text ="Enter the Number Here";
          
    //    }
    //    else
    //    {
    //        try
    //        {
    //            int value = int.Parse(TextBox2.Text.Substring(0, 2));
    //            double CheckNo = double.Parse(TextBox2.Text.ToString());
    //            switch (CardType)
    //            {
    //                case 0:
    //                    {
    //                        try
    //                        {
    //                            int value1 = int.Parse(TextBox2.Text.Substring(0, 1));
    //                            if (TextBox2.Text.Length == 16 || TextBox2.Text.Length == 13)
    //                            {
    //                                if (value1 != 4)
    //                                {
    //                                    Label16 .Text="Prefix Wrong, This is not a VISA Card";
    //                                }
    //                            }
    //                            else
    //                            {
    //                                Label16 .Text="You must enter 16 OR 13 digits,";
    //                            }
    //                        }
    //                        catch
    //                        {
    //                             Label16 .Text="can't convert";
    //                        }
    //                    }
    //                    break;


    //                case 1:
    //                    {
    //                        if (TextBox2.Text.Length == 16)
    //                        {
    //                            if (value != 51 && value != 55)
    //                            {
    //                                Label16 .Text="Prefix Wrong, This is not a MASTER Card";
    //                            }
    //                        }
    //                        else
    //                        {
    //                           Label16 .Text="You must enter 16 digit";
    //                        }
    //                    }
    //                    break;

    //                case 2:
    //                    {
    //                        if (TextBox2.Text.Length == 15)
    //                        {
    //                            if (value != 34 && value != 37)
    //                            {
    //                                Label16 .Text="Prefix Wrong, This is not a AMEX Card";
    //                            }
    //                        }
    //                        else
    //                        {
    //                             Label16 .Text="You must enter 15 digit";
    //                        }
    //                    }
    //                    break;
    //            }
    //            try
    //            {

    //                int row = int.Parse(Customer.getvalcount("Select Count (*) from creditcard where CreditCardNumber='" + TextBox2.Text.ToString() + "'"));
    //                if (row > 0)
    //                {
    //                    Label7.Text = "suessed" + row;
    //                    Customer.Addcustomertransation(1,DateTime.Parse(TextBox4.Text.ToString()), int.Parse(Label6.Text.ToString()));
    //                    Label17.Text = Customer.orderID1.ToString ();
    //                }
    //                else
    //                {
    //                    Label7.Text = "reennter";
    //                }
    //            }
    //            catch { }
    //        }
    //        catch 
    //        {
    //        }

          
    //    }

        try
        {

            int row = int.Parse(Customer.getvalcount("Select Count (*) from creditcard where CreditCardNumber='" + TextBox2.Text.ToString() + "'"));
            if (row > 0)
            {
                Label17.Visible = true ;
                Label7.Text = "suessed" + row;
                Customer.Addcustomertransation(1,TextBox2 .Text .ToString (), DateTime.Parse(TextBox4.Text.ToString()), int.Parse(Label6.Text.ToString()));
                Label17.Text = Customer.orderID1.ToString();
             
            }
            else
            {
                Label7.Text = "reennter";
            }
        }
        catch { }


       

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        try
        {
            TextBox5.Text = Calendar1.SelectedDate.Date.ToString("MM/dd/yyyy");
        }
        catch { }
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Label13.Visible = true;
    }
    public void cardvalidate()
    {
        }
}

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

public partial class Admin_accountSummary : System.Web.UI.Page
{
    
   // DataSet DS;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            double totalam1 = Customer.getval("select sum(CreditAmount) from AccountDetail");
            Label10.Text = totalam1.ToString() + "$";
            double totalam = Customer.getval("select sum(DebitAmount) from AccountDetail");
            Label11.Text = totalam.ToString() + "$";

        }
        catch { }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

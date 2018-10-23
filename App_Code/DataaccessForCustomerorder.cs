using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for DataaccessForCustomerorder
/// </summary>
public class DataaccessForCustomerorder
{
    public static string Error;
    public static SqlDataReader GetOrders1()
    {
        string sql = "SELECT * FROM customerorder order by OrderID  desc";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static DataSet Getordersview(int ProductID)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT ProductName,UnitInstock,UnitOnstock FROM Product WHERE ProductID=@ProductID";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Supplier");
            }
        }
        catch { }
        return dataSet;
    }

    public static SqlDataReader GetProducttoProductID(int OrderID)
    {
        string sql = "SELECT OrderID,RequiredDate,ShippedDate,Orderstatus FROM CustomerPurchase where OrderID=' " + OrderID + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

  //  public static int OrderID1;
    public static int updateOrdrs(
                                 int OrderID,
                           DateTime  RequiredDate,
                            DateTime ShippedDate,
                            string Orderstatus

                             
        )
    //Image  Picture
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Spupdateodes", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@OrderID", SqlDbType.Int).Value = OrderID;
                command.Parameters.Add("@Orderstatus", SqlDbType.VarChar, 50).Value = Orderstatus;


                command.Parameters.Add("@ShippedDate", SqlDbType.DateTime).Value = ShippedDate;

                command.Parameters.Add("@RequiredDate", SqlDbType.DateTime).Value = RequiredDate;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update Suessfully";
        }
        catch {
            Error = "";
        }
        return rowsAffected;

    }
}

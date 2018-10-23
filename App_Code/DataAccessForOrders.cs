using System;
using System.Data;
using System.Data.SqlClient ;
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
/// Summary description for DataAccessForOrders
/// </summary>
public class DataAccessForOrders
{
    public static SqlDataReader GetOrders()
    {
                string sql = "SELECT * FROM ViewOrders";

                SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader GetOrders1()
    {
        string sql = "SELECT * FROM ViewOrders1";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }


    public static int OrderID1;
    public static int InsertOrdrs(
                                 int OrderID,                       
                           string ProductName,
                            string SupplierName,
                            double UnitPrice,
                            
                              string Orderstatus,

                           DateTime OrderDate,
                          int Quantity

        )
    //Image  Picture
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddorders", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@OrderID", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 30).Value = ProductName;
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                command.Parameters.Add("@UnitPrice", SqlDbType.Money).Value = UnitPrice;
                command.Parameters.Add("@Quantity", SqlDbType.Int).Value = Quantity;

                command.Parameters.Add("@Orderstatus", SqlDbType.VarChar, 100).Value = Orderstatus;

                command.Parameters.Add("@OrderDate", SqlDbType.DateTime).Value = OrderDate;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
                OrderID1 = int.Parse(command.Parameters["@OrderID"].Value.ToString());
            }
        }
        catch { }
        return rowsAffected;

    }

    public static DataSet Getordersview(string SupplierName)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT * FROM vieworders WHERE SupplierName='" + SupplierName + "'";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Supplier");
            }
        }
        catch { }
        return dataSet;
    }


    public static DataSet ordersview(int OrderID)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT ProductName,SupplierName,UnitPrice,Quantity,OrderDate,RecivedQuntity FROM vieworders1 WHERE OrderID=@OrderID";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@OrderID", SqlDbType.Int).Value = OrderID;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Supplier");
            }
        }
        catch { }
        return dataSet;
    }
    public static int UpdateorderStatus(
                            int OrderID,
                            string  Orderstatus
        
                           )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("update SupplierOrder set Orderstatus=' " + Orderstatus + "' where OrderID =' " + OrderID + "' ", connection);
                command.CommandType = CommandType.Text;

                rowsAffected = command.ExecuteNonQuery();
            }
        }
        catch { }
        return rowsAffected;
    }

    public static int Updateorderqty(
                            int OrderID,
                                   int RecivedQuntity
                           )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("update SupplierOrderDetail set RecivedQuntity='" + RecivedQuntity + "' where OrderID =' " + OrderID + "' ", connection);
                command.CommandType = CommandType.Text;

                rowsAffected = command.ExecuteNonQuery();
            }
        }
       
        catch {} 
        return rowsAffected;
    }

    public static int InsertProducttransation(
                                                   
                       string ProductName,
                       
                           string SupplierName,
        // int CategoryID ,
        //int SupplierID ,
                         int QtyRecived,
                        double UnitPrice,
        //int UnitOnstock ,
                        
                        double SellingPrice,
                       DateTime DealDate
                        

    )
    //Image  Picture
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddOrderTransation", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 30).Value = ProductName;
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                command.Parameters.Add("@UnitPrice", SqlDbType.Money).Value = UnitPrice;
                command.Parameters.Add("@QtyRecived", SqlDbType.Int).Value = QtyRecived;
                command.Parameters.Add("@SellingPrice", SqlDbType.Money).Value = SellingPrice;
                command.Parameters.Add("@DealDate", SqlDbType.DateTime).Value = DealDate;

                rowsAffected = command.ExecuteNonQuery();
            }
        }
        catch { }
        return rowsAffected;

    }


}

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
/// Summary description for Customer
/// </summary>
public class Customer
{
    public static int ProductID1;
    public static string Error;
    public static double totalamount = 0.0;
    public static SqlDataReader GetCategory(string sql)
    {
        //string sql = "SELECT CategoryName FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader GetCategory()
    {
        string sql = "SELECT Top 9 CategoryName  FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Getproduct()
    {
        string sql = "SELECT Top 12 ProductName  FROM Product";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader Getcartdetails()
    {
        string sql = "SELECT ProductName,Qty,Price,Amount  FROM TemCart";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetProducttoCategoryID(int CategoryID)
    {
        string sql = "SELECT * FROM Product where CategoryID=' " + CategoryID + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetPassword(string UserName)
    {
        string sql = "SELECT Password FROM Customer where UserName=' " + UserName + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetProducttoproID(int ProductID)
    {
        string sql = "SELECT ProductName,ProductDetails,Dimension,color,ProduceDate,SellingPrice,Description FROM productview where ProductID='" + ProductID + "'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static int CustomerID1;
    public static int Addcustomerdetails(
        int CustomerID,
                     string CustomerFirstName,
                     string CustomerLastName,
                     string CustomerAddress,
                     string CustomerCity,
                     string CustomerState,
                     string CustomerCountry,
                     string CustomerPostalCode,
                      string CustomerEmail,
                     string CustomerPhone,
                     string Password,
                     string UserName
                    )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddcustomer", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@CustomerID", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@CustomerFirstName", SqlDbType.VarChar, 30).Value = CustomerFirstName;
                command.Parameters.Add("CustomerLastName", SqlDbType.VarChar, 30).Value = CustomerLastName;
                command.Parameters.Add("@CustomerAddress", SqlDbType.VarChar, 50).Value = CustomerAddress;
                command.Parameters.Add("@CustomerCity", SqlDbType.VarChar, 20).Value = CustomerCity;
                command.Parameters.Add("@CustomerState", SqlDbType.VarChar, 30).Value = CustomerState;
                command.Parameters.Add("@CustomerCountry", SqlDbType.VarChar, 50).Value = CustomerCountry;
                command.Parameters.Add("@CustomerPostalCode", SqlDbType.VarChar, 20).Value = CustomerPostalCode;
                command.Parameters.Add("@CustomerEmail", SqlDbType.VarChar, 50).Value = CustomerEmail;
                command.Parameters.Add("@CustomerPhone", SqlDbType.VarChar, 20).Value = CustomerPhone;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 20).Value = Password;
                command.Parameters.Add("@UserName", SqlDbType.VarChar, 20).Value = UserName;
                rowsAffected = command.ExecuteNonQuery();
                CustomerID1 = int.Parse(command.Parameters["@CustomerID"].Value.ToString());
            }
            Error = "Saved Suessfully";
        }
        catch {
            Error = Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }



    public static int Addtemcart(
                        string ProductName,
                        int Qty,
                        double Price,
                        double Amount

                       )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("sptemcart", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.Parameters.Add("@Qty", SqlDbType.Int).Value = Qty;
                command.Parameters.Add("@Price", SqlDbType.Money).Value = Price;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Saved Suessfully";
        }
        catch 
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }
    public static int orderID1;
    public static int Addcustomertransation(
                         int OrderID,
                            string CreditCardNumber,
                         DateTime OrderDate,
                          int CustomerID

                                 )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spcustomertansation", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@OrderID", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@CustomerID", SqlDbType.Int).Value = CustomerID;
                command.Parameters.Add("@CreditCardNumber", SqlDbType.VarChar, 16).Value = CreditCardNumber;
                command.Parameters.Add("@OrderDate", SqlDbType.DateTime).Value = OrderDate;
                rowsAffected = command.ExecuteNonQuery();
                orderID1 = int.Parse(command.Parameters["@OrderID"].Value.ToString());
            }
            Error = "Saved SuessFully";
        }
        catch {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int Edittemcart(
        // int Id,
                        string ProductName,
                        int Qty,
        //double Price,
                        double Amount

                       )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("spEdittemcart", connection);
                command.CommandType = CommandType.StoredProcedure;
                //  command.Parameters.Add("@Id", SqlDbType.Int).Value = Id;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.Parameters.Add("@Qty", SqlDbType.Int).Value = Qty;
                //command.Parameters.Add("@Price", SqlDbType.Money).Value = Price;
                command.Parameters.Add("@Amount", SqlDbType.Money).Value = Amount;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update Suessfully";
        }
        catch {
            Error = "Please Check your Entered Data";

        }
                return rowsAffected;

    }

    public static double getval(string sql)
    {
        //string sql = "SELECT * FROM Product where ProductName=' " + ProductName + "'";
        using (SqlConnection con = ConnectionManager.GetConnection())
        {
            double val;
            {

                SqlCommand com = new SqlCommand(sql, con);
                val = double.Parse(com.ExecuteScalar().ToString());


                return val;

            }

        }
    }
    public static string getvalcount(string sql)
    {
        //string sql = "SELECT * FROM Product where ProductName=' " + ProductName + "'";
        using (SqlConnection con = ConnectionManager.GetConnection())
        {
            string val;
            {

                SqlCommand com = new SqlCommand(sql, con);
                val = com.ExecuteScalar().ToString();


                return val;

            }
        }
    }

}
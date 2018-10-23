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
/// Summary description for DataAccessforpersons
/// </summary>
public class DataAccessforpersons
{
   public static string  Error; 
    public static SqlDataReader GetCategory()
    {
        string sql = "SELECT * FROM Supplier";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Getsupplier()
    {
        string sql = "SELECT SupplierID,SupplierName FROM Supplier";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static int AddSupplier(
        //string CategoryName,
        int SupplierID,
        string SupplierName ,
                       string SupplierAddress ,
            string SupplierCity ,
            string SupplierCountry ,
            string SupplierPostalCode ,
            string SupplierEmail ,
            string SupplierPhone ,
            string DateofBirth ,
            string PassWords ,
            string UserName )
    //Image  Picture
    {

        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddSupplier", connection);
                command.CommandType = CommandType.StoredProcedure;
                //command.Parameters.Add("@CategoryName",SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                command.Parameters.Add("@SupplierAddress", SqlDbType.VarChar, 50).Value = SupplierAddress;
                command.Parameters.Add("@SupplierCity", SqlDbType.VarChar, 20).Value = SupplierCity;
                command.Parameters.Add("@SupplierCountry", SqlDbType.VarChar, 20).Value = SupplierCountry;
                command.Parameters.Add("@SupplierPostalCode", SqlDbType.VarChar, 20).Value = SupplierPostalCode;
                command.Parameters.Add("@SupplierEmail", SqlDbType.VarChar, 30).Value = SupplierEmail;
                command.Parameters.Add("@SupplierPhone", SqlDbType.VarChar, 20).Value = SupplierPhone;
                command.Parameters.Add("@DateofBirth", SqlDbType.DateTime).Value = DateofBirth;
                command.Parameters.Add("@PassWords", SqlDbType.VarChar, 20).Value = PassWords;
                command.Parameters.Add("@UserName", SqlDbType.VarChar, 20).Value = UserName;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Saved SuessFully";
        }
        catch {
 
        }
        return rowsAffected;
    }
    public static int EditSupplier(
        //string CategoryName,
        int SupplierID,
        string SupplierName,
                       string SupplierAddress,
            string SupplierCity,
            string SupplierCountry,
            string SupplierPostalCode,
            string SupplierEmail,
            string SupplierPhone,
            string DateofBirth,
            string PassWords,
            string UserName)
    //Image  Picture
    {

        int rowsAffected = 0;
        try {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditSupplier", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@SupplierID", SqlDbType.Int).Value = SupplierID;
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                command.Parameters.Add("@SupplierAddress", SqlDbType.VarChar, 50).Value = SupplierAddress;
                command.Parameters.Add("@SupplierCity", SqlDbType.VarChar, 20).Value = SupplierCity;
                command.Parameters.Add("@SupplierCountry", SqlDbType.VarChar, 20).Value = SupplierCountry;
                command.Parameters.Add("@SupplierPostalCode", SqlDbType.VarChar, 20).Value = SupplierPostalCode;
                command.Parameters.Add("@SupplierEmail", SqlDbType.VarChar, 30).Value = SupplierEmail;
                command.Parameters.Add("@SupplierPhone", SqlDbType.VarChar, 20).Value = SupplierPhone;
                command.Parameters.Add("@DateofBirth", SqlDbType.DateTime).Value = DateofBirth;
                command.Parameters.Add("@PassWords", SqlDbType.VarChar, 20).Value = PassWords;
                command.Parameters.Add("@UserName", SqlDbType.VarChar, 20).Value = UserName;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
            }
                   } 
        catch {}
        return rowsAffected;
    }
}

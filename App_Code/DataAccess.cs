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
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
  
    public static string name;
    public static string Error = "";
    public static SqlDataReader GetCategory()
            {
        string sql = "SELECT CategoryID,CategoryName,Descriptions FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetCategory1()
    {
        string sql = "SELECT CategoryID,CategoryName FROM Category";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader Adduser1()
    {
        string sql = "SELECT * FROM UserLoginDetail";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader gethomitem()
    {
        string sql = "SELECT * FROM homeset";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetProductdetails()
    {
        string sql = "SELECT * FROM productdetailsview";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetProduct()
    {
        //string sql = "SELECT     Category.CategoryName,Supplier.SupplierName, Product.ProductID, Product.ProductName, Product.CategoryID, Product.SupplierID,Product.UnitPrice,Product.UnitInstock, Product.UnitOnstock,Product.ReorderLevel, Product.SellingPrice, Product.Description from  Viewcategoryvspro";
          string sql="SELECT * FROM Viewcategoryvspro";


        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static DataSet GetProductsview(int ProductID)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT * FROM Viewcategoryvspro WHERE ProductID=@ProductID";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Product");
            }
        }
        catch { }
        return dataSet;
    }

    public static DataSet Gethomeview()
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT * FROM homeset";
                SqlCommand command = new SqlCommand(sql, connection);
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Product");
            }
        }
        catch { }
        return dataSet;
    }
    public static SqlDataReader GetProducttoProductName(string ProductName)
    {    
        string sql = "SELECT * FROM Product where ProductName=' " + ProductName+"'";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;

        SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }
    public static SqlDataReader GetProducttoreorderlevel()
    {
        string sql = "SELECT ProductID,ProductName,UnitInstock,ReorderLevel FROM Product where ReorderLevel>=UnitInstock";

        SqlConnection connection = ConnectionManager.GetConnection();
        SqlCommand command = new SqlCommand(sql, connection);
        command.CommandType = CommandType.Text;
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.SingleResult | CommandBehavior.CloseConnection);
        return reader;
    }

    public static SqlDataReader GetProducttoProductID(int ProductID)
    {
        string sql = "SELECT * FROM Product where ProductID=' " + ProductID + "'";

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
    public static SqlDataReader getreader(string sql)
    {
        SqlConnection con = ConnectionManager.GetConnection(); 
        SqlCommand com = new SqlCommand(sql, con);
        SqlDataReader dr = com.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;

    }


    public static int InsertCategory(
                              int CategoryID,
                              string CategoryName,
                              string Descriptions)
    //Image  Picture
    {

        int rowsAffected = 0;
        try
        {

            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddcatogery", connection);
                command.CommandType = CommandType.StoredProcedure;
                //command.Parameters.Add("@CategoryID", SqlDbType.Int).Value = CategoryID;
                command.Parameters.Add("@CategoryName", SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@Descriptions", SqlDbType.VarChar, 100).Value = Descriptions;
                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Saveed Suessfully";
        }

        catch { 
               Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static int Updatecatogery(
                            int CategoryID,
                            string CategoryName,
                            string Descriptions
                           )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditcategory", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@CategoryID", SqlDbType.Int).Value = CategoryID;
                command.Parameters.Add("@CategoryName", SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@Descriptions", SqlDbType.VarChar, 100).Value = Descriptions;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }


    public static int UpdateProduct(
        //string CategoryName,
        int  ProductID,
                           string   ProductName ,
                            int CategoryID ,
                            string SupplierID ,
                            double UnitPrice ,
                            int UnitInstock ,
                            int UnitOnstock ,
                            int ReorderLevel ,
                            double SellingPrice ,
                            string Description  )
    //Image  Picture
    {
        int rowsAffected = 0;
        try
        {
           

            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditProduct", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                //command.Parameters.Add("@CategoryName",SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.Parameters.Add("@CategoryID", SqlDbType.Int).Value = CategoryID;
                command.Parameters.Add("@SupplierID", SqlDbType.Int).Value = SupplierID;
                command.Parameters.Add("@UnitPrice", SqlDbType.Money).Value = UnitPrice;
                command.Parameters.Add("@UnitInstock", SqlDbType.Int).Value = UnitInstock;
                command.Parameters.Add("@UnitOnstock", SqlDbType.Int).Value = UnitOnstock;
                command.Parameters.Add("@ReorderLevel", SqlDbType.Int).Value = ReorderLevel;
                command.Parameters.Add("@SellingPrice", SqlDbType.Money).Value = SellingPrice;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 100).Value = Description;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update Suessfully";
        }
        catch {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;

    }
    public static int productID1;
    public static int InsertProduct(
                                                        int  ProductID,
                           string   ProductName ,
                            string CategoryName,
                               string SupplierName,
                           // int CategoryID ,
                            //int SupplierID ,
                             int QtyRecived,
                            double UnitPrice ,
                                                       //int UnitOnstock ,
                            int ReorderLevel ,
                            double SellingPrice ,
                           string DealDate,
                            string Description 
       
        )
      
    //Image  Picture
    { int rowsAffected = 0;
        try
        {

            DateTime dt = DateTime.Parse(DealDate);

            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpAddproduct1", connection);
                command.CommandType = CommandType.StoredProcedure;

                //command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.Parameters.Add("@ProductID", SqlDbType.Int).Direction = ParameterDirection.Output;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 30).Value = ProductName;
                command.Parameters.Add("@CategoryName", SqlDbType.VarChar, 50).Value = CategoryName;
                command.Parameters.Add("@SupplierName", SqlDbType.VarChar, 30).Value = SupplierName;
                //command.Parameters.Add("@CategoryID", SqlDbType.Int).Value = CategoryID;
                // command.Parameters.Add("@SupplierID", SqlDbType.Int).Value = SupplierID;
                command.Parameters.Add("@UnitPrice", SqlDbType.Money).Value = UnitPrice;
                command.Parameters.Add("@QtyRecived", SqlDbType.Int).Value = QtyRecived;
                //command.Parameters.Add("@UnitOnstock", SqlDbType.Int).Value = UnitOnstock;
                command.Parameters.Add("@ReorderLevel", SqlDbType.Int).Value = ReorderLevel;
                command.Parameters.Add("@SellingPrice", SqlDbType.Money).Value = SellingPrice;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 100).Value = Description;

                command.Parameters.Add("@DealDate", SqlDbType.DateTime).Value = dt;


                //command.Parameters.Add("@Picture", SqlDbType.Image).Value = Picture;

                rowsAffected = command.ExecuteNonQuery();
                productID1 = int.Parse(command.Parameters["@ProductID"].Value.ToString());
            }
            Error = "Saved Suessfully";
           
        }
        catch {
            Error = "Please Check your Entered Data";
        }

        return rowsAffected;
    }

    public static int Updatesellingprice(
                             int ProductID,
                             double SellingPrice
                            )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("update Product set SellingPrice=' " + SellingPrice + "' where ProductID =' " + ProductID + "' ", connection);
                command.CommandType = CommandType.Text;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }


    public static int AddProductdetails(
        int ProductID,
                        string   ProductName ,
                        string ProductDetails,
                        string Dimension,
                        string color,
                        DateTime ProduceDate,
                        DateTime ExpDate,
                        string pic
                       )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("AddProductdetail", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.Parameters.Add("@ProductDetails", SqlDbType.VarChar, 100).Value = ProductDetails;
                command.Parameters.Add("@Dimension", SqlDbType.VarChar, 50).Value = Dimension;
                command.Parameters.Add("@color", SqlDbType.VarChar, 20).Value = color;
                command.Parameters.Add("@ProduceDate", SqlDbType.DateTime).Value = ProduceDate;
                command.Parameters.Add("@ExpDate", SqlDbType.DateTime).Value = ExpDate;
                command.Parameters.Add("@pic", SqlDbType.VarChar, 50).Value = pic;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Saved SuessFully";
        } 
        catch {
             Error = "Please Check your Entered Data";
        } 
        return rowsAffected;
      
    }

    public static int EditProductdetails(
        int ProductID,
                      string ProductName,
                      string ProductDetails,
                      string Dimension,
                      string color,
                      DateTime ProduceDate,
                      DateTime ExpDate,
                       string pic
                     )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("SpEditProductdetails", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.Parameters.Add("@ProductDetails", SqlDbType.VarChar, 100).Value = ProductDetails;
                command.Parameters.Add("@Dimension", SqlDbType.VarChar, 50).Value = Dimension;
                command.Parameters.Add("@color", SqlDbType.VarChar, 20).Value = color;
                command.Parameters.Add("@ProduceDate", SqlDbType.DateTime).Value = ProduceDate;
                command.Parameters.Add("@ExpDate", SqlDbType.DateTime).Value = ExpDate;
                command.Parameters.Add("@pic", SqlDbType.VarChar, 50).Value = pic;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update Suessfully";
        }
        catch {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;

    }

    public static int Adduser(
                            
                          string UserName,
                          string Password,
                          string UserType,
                          string Description

                         )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Adduser", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@UserName", SqlDbType.VarChar, 20).Value = UserName;
                command.Parameters.Add("@Password", SqlDbType.VarChar, 20).Value = Password;
                command.Parameters.Add("@UserType", SqlDbType.VarChar, 20).Value = UserType;
                command.Parameters.Add("@Description", SqlDbType.VarChar, 50).Value = Description;

                rowsAffected = command.ExecuteNonQuery();
            }
            Error = "Update SuessFully";
        }
        catch
        {
            Error = "Please Check your Entered Data";
        }
        return rowsAffected;
    }

    public static DataSet GetProductsInProductName(string ProductName)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT * FROM Product WHERE ProductName=@ProductName";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@ProductName", SqlDbType.VarChar, 50).Value = ProductName;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Product");
            }
            Error = "Suessfully";
        }
        catch {
            Error = "Incorrect Name";
        }
        return dataSet;
    }
    public static DataSet GetProductsInProductID(int ProductID)
    {
        DataSet dataSet = new DataSet();
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                string sql = "SELECT * FROM Product WHERE ProductID=@ProductID";
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.Add("@ProductID", SqlDbType.Int).Value = ProductID;
                command.CommandType = CommandType.Text;

                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                dataAdapter.Fill(dataSet, "Product");
            }
        }
           catch {}      
        return dataSet;
       
    }
    public static DataSet GetProductsInCategoryID(int CategoryID)
    {
        DataSet dataSet = new DataSet();

        using (SqlConnection connection = ConnectionManager.GetConnection())
        {
            string sql = "SELECT * FROM Product WHERE CategoryID=@CategoryID";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.Add("@CategoryID", SqlDbType.Int).Value = CategoryID;
            command.CommandType = CommandType.Text;

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dataSet, "Product");
        }
        return dataSet;
    }

   
    public static int getval(string sql)
    {
        //string sql = "SELECT * FROM Product where ProductName=' " + ProductName + "'";
        using (SqlConnection con = ConnectionManager.GetConnection())
        {
            int val;
            {

                SqlCommand com = new SqlCommand(sql, con);
                val = int.Parse(com.ExecuteScalar().ToString());


                return val;

            }
        }
    }

    public static int homeset(

                         int ProductID
                                              
        )

    {
        int rowsAffected = 0;

        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("INSERT INTO homedetail(ProductID) VALUES('" + ProductID + "')", connection);
                command.CommandType = CommandType.Text;

                rowsAffected = command.ExecuteNonQuery();
            }
        }
        catch { }
        return rowsAffected;
    }

    public static int Delhomeset(

                       int ProductID

      )
    {
        int rowsAffected = 0;
        try
        {
            using (SqlConnection connection = ConnectionManager.GetConnection())
            {
                SqlCommand command = new SqlCommand("Delete From homedetail Where ProductID='" + ProductID + "'", connection);
                command.CommandType = CommandType.Text;

                rowsAffected = command.ExecuteNonQuery();
            }
        } 
        catch {}
        return rowsAffected;
       
    }

    public static DataSet pgethomitem()
    {
        throw new NotImplementedException();
    }

}

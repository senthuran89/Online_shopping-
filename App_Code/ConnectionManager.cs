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
/// Summary description for ConnectionManager
/// </summary>
public class ConnectionManager
{
    public static SqlConnection GetConnection()
    {
        // Get the connection string from the configuration file
        string connectionString = ConfigurationManager.ConnectionStrings["EshopSystemConnectionString"].ConnectionString;

        // Create a new connection object
        SqlConnection connection = new SqlConnection(connectionString);

        // Open the connection, and return it
        connection.Open();
        return connection;
    }
}

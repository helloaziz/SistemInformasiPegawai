import java.sql.*;

public class KoneksiDBMS
{
    String driverdbms = "com.mysql.jdbc.Driver";
    String database   = "jdbc:mysql://localhost/dbaziz06316";
    String user       = "aziz06316";
    String password   = "";

    public KoneksiDBMS()
    {
    }

    public Connection BukanCn() throws SQLException
    {
        Connection condbms = null;
        try
        {
            Class.forName(driverdbms);
            condbms = DriverManager.getConnection(database, user, password);

            return condbms;
        }
        catch (SQLException se)
        {
            System.out.println("Ada kesalahan pada SQL !:");
            return null;
        }
        catch (Exception ex)
        {
            System.out.println("Koneksi database tidak berhasil !");
            return null;
        }
    }

    public Connection BukaCn() {
        return null;
    }
}
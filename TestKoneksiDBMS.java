import java.sql.*;

public class TestKoneksiDBMS {
    public static void main(String args[]){
        try
        {
            KoneksiDBMS CnPenjualan = new KoneksiDBMS();
            Connection con = CnPenjualan.BukanCn();

            if (con != null) {
                System.out.println("Koneksi Berhasil");
            } else {
                System.out.println("Koneksi Tidak Berhasil");
            }

            con.close();
        }
        catch(SQLException e)
        {
            System.err.println("Keaslahan perintah SQL : " + e.getMessage());
        }
    }
}

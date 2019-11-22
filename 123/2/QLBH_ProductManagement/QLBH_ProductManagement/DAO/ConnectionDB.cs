using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBH_ProductManagement.DAO
{
    

    public class ConnectionDB
    {
        //static string path = "Data Source=DESKTOP-EKT2OFS;Initial Catalog=TESTPHANQUYEN;Integrated Security=True";
        //static SqlConnection con = new SqlConnection(@"Data Source=ANHTHI\SQLSEVER;Initial Catalog=TESTPHANQUYEN;Integrated Security=True");
        static SqlConnection con = new SqlConnection(@"Data Source=DIEMKIRI\MYDIEM;Initial Catalog=PM_QLBH01;Integrated Security=True");
        public static void OpenConnection()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }
        public static void CloseConnection()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        public static DataTable getData(string sql)
        {
            DataTable data = new DataTable();
            SqlDataAdapter adap = new SqlDataAdapter(sql, con);
            adap.Fill(data);
            return data;
        }

        public static int ExcuteQuery(string sql)
        {
            con.Open();
            SqlCommand com = new SqlCommand(sql, con);
            int check = (int)com.ExecuteScalar();
            con.Close();
            return check;
        }

    }
}

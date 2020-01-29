using EADP_Project.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EADP_Project.DAL
{
    public class FoodsDAO
    {
        public Foods SelectById(string foodId)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Select * from Food where id = @paraId";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@paraId", foodId);

            DataSet ds = new DataSet();
            da.Fill(ds);
            int rec_cnt = ds.Tables[0].Rows.Count;

            Foods obj = null;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string id = row["id"].ToString();
                string name = row["name"].ToString(); ;
                string description = row["description"].ToString();
                string culinarytype = row["culinarytype"].ToString();
                string deals = row["deals"].ToString();
                string email = row["email"].ToString();
                string phone = row["phone"].ToString();
                string opwkd1 = row["opwkd1"].ToString();
                string opwkd2 = row["opwkd2"].ToString();
                string opwke1 = row["opwke1"].ToString();
                string opwke2 = row["opwke2"].ToString();
                string pricewkd1 = row["pricewkd1"].ToString();
                string pricewkd2 = row["pricewkd2"].ToString();
                string pricewke1 = row["pricewke1"].ToString(); ;
                string pricewke2 = row["pricewke2"].ToString();
                string lat1 = row["lat1"].ToString();
                string long1 = row["long1"].ToString();
                string image = row["image"].ToString();
                string userid = row["userid"].ToString();
                obj = new Foods(id, name, description, culinarytype,deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, userid);
            }
            return obj;
        }

        public int InsertFood(string name, string description,string culinarytype, string deals, string email, string phone, string opwkd1, string opwkd2, string opwke1, string opwke2, string pricewkd1, string pricewkd2, string pricewke1, string pricewke2, string lat1, string long1, string image, string userid)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Insert into Food(name, description,culinarytype,deals,email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, userid) Values(@paraname, @paradescription,@paraculinarytype,@paradeals,@paraemail, @paraphone, @paraopwkd1, @paraopwkd2, @paraopwke1, @paraopwke2, @parapricewkd1, @parapricewkd2, @parapricewke1, @parapricewke2, @paralat1, @paralong1, @paraimage, @parauserid)";
            SqlCommand sqlCmd = new SqlCommand(sqlstmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraname", name);
            sqlCmd.Parameters.AddWithValue("@paradescription", description);
            sqlCmd.Parameters.AddWithValue("@paraculinarytype", culinarytype);
            sqlCmd.Parameters.AddWithValue("@paradeals", deals);
            sqlCmd.Parameters.AddWithValue("@paraemail", email);
            sqlCmd.Parameters.AddWithValue("@paraphone", phone);
            sqlCmd.Parameters.AddWithValue("@paraopwkd1", opwkd1);
            sqlCmd.Parameters.AddWithValue("@paraopwkd2", opwkd2);
            sqlCmd.Parameters.AddWithValue("@paraopwke1", opwke1);
            sqlCmd.Parameters.AddWithValue("@paraopwke2", opwke2);
            sqlCmd.Parameters.AddWithValue("@parapricewkd1", pricewkd1);
            sqlCmd.Parameters.AddWithValue("@parapricewkd2", pricewkd2);
            sqlCmd.Parameters.AddWithValue("@parapricewke1", pricewke1);
            sqlCmd.Parameters.AddWithValue("@parapricewke2", pricewke2);
            sqlCmd.Parameters.AddWithValue("@paralat1", lat1);
            sqlCmd.Parameters.AddWithValue("@paralong1", long1);
            sqlCmd.Parameters.AddWithValue("@paraimage", image);
            sqlCmd.Parameters.AddWithValue("@parauserid", userid);

            myConn.Open();
            int result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;


        }

        public List<Foods> SelectAll()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            String sqlstmt = "SELECT * From Food where valid = 1";

            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);

            DataSet ds = new DataSet();
            da.Fill(ds);

            List<Foods> fdList = new List<Foods>();

            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 0)
            {
                fdList = null;
            }
            else
            {
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    string id = row["id"].ToString();
                    string name = row["name"].ToString(); ;
                    string description = row["description"].ToString();
                    string culinarytype = row["culinarytype"].ToString();
                    string deals = row["deals"].ToString();
                    string email = row["email"].ToString();
                    string phone = row["phone"].ToString();
                    string opwkd1 = row["opwkd1"].ToString();
                    string opwkd2 = row["opwkd2"].ToString();
                    string opwke1 = row["opwke1"].ToString();
                    string opwke2 = row["opwke2"].ToString();
                    string pricewkd1 = row["pricewkd1"].ToString();
                    string pricewkd2 = row["pricewkd2"].ToString();
                    string pricewke1 = row["pricewke1"].ToString(); ;
                    string pricewke2 = row["pricewke2"].ToString();
                    string lat1 = row["lat1"].ToString();
                    string long1 = row["long1"].ToString();
                    string image = row["image"].ToString();
                    string userid = row["userid"].ToString();
                    Foods objFood = new Foods(id, name, description, culinarytype,deals, email, phone, opwkd1, opwkd2, opwke1, opwke2, pricewkd1, pricewkd2, pricewke1, pricewke2, lat1, long1, image, userid);
                    fdList.Add(objFood);
                }
            }
            return fdList;
        }
        public int FoodUpdate(string id, string name, string description, string culinarytype, string deals, string email, string phone, string opwkd1, string opwkd2, string opwke1, string opwke2, string pricewkd1, string pricewkd2, string pricewke1, string pricewke2, string lat1, string long1, string image, string userid)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "UPDATE Food SET name = @paraname, description = @paradescription,culinarytype = @paraculinarytype,deals = @paradeals,email = @paraemail, phone = @paraphone, opwkd1 = @paraopwkd1, opwkd2 = @paraopwkd2, " +
                "opwke1 = @paraopwke1, opwke2 = @paraopwke2, pricewkd1 = @parapricewkd1, pricewkd2 = @parapricewkd2, pricewke1 = @parapricewke1, pricewke2 = @parapricewke2, lat1 = @paralat1, long1 = @paralong1, image = @paraimage, userid = @parauserid where id =  @paraid";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);


            sqlCmd = new SqlCommand(sqlStmt.ToString(), myConn);
            sqlCmd.Parameters.AddWithValue("@paraid", id);
            sqlCmd.Parameters.AddWithValue("@paraname", name);
            sqlCmd.Parameters.AddWithValue("@paradescription", description);
            sqlCmd.Parameters.AddWithValue("@paraculinarytype", culinarytype);
            sqlCmd.Parameters.AddWithValue("@paradeals", deals);
            sqlCmd.Parameters.AddWithValue("@paraemail", email);
            sqlCmd.Parameters.AddWithValue("@paraphone", phone);
            sqlCmd.Parameters.AddWithValue("@paraopwkd1", opwkd1);
            sqlCmd.Parameters.AddWithValue("@paraopwkd2", opwkd2);
            sqlCmd.Parameters.AddWithValue("@paraopwke1", opwke1);
            sqlCmd.Parameters.AddWithValue("@paraopwke2", opwke2);
            sqlCmd.Parameters.AddWithValue("@parapricewkd1", pricewkd1);
            sqlCmd.Parameters.AddWithValue("@parapricewkd2", pricewkd2);
            sqlCmd.Parameters.AddWithValue("@parapricewke1", pricewke1);
            sqlCmd.Parameters.AddWithValue("@parapricewke2", pricewke2);
            sqlCmd.Parameters.AddWithValue("@paralat1", lat1);
            sqlCmd.Parameters.AddWithValue("@paralong1", long1);
            sqlCmd.Parameters.AddWithValue("@paraimage", image);
            sqlCmd.Parameters.AddWithValue("@parauserid", userid);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }
        public int Fooddelete(string id)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "UPDATE Food SET valid = 0 where id =  @paraid";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);


            sqlCmd = new SqlCommand(sqlStmt.ToString(), myConn);

            sqlCmd.Parameters.AddWithValue("@paraid", id);
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }
    }
}
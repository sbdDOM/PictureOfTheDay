using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class About : System.Web.UI.Page
    {
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\i7\source\repos\WebApplication2\WebApplication2\App_Data\fengariDB.mdf;Integrated Security=True";
        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public SqlDataReader dataReader;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            try
            {
                SqlCommand command;
                string sql;
                conn = new SqlConnection(connString);
                adapter = new SqlDataAdapter();
                ds = new DataSet();

                conn.Open();
                sql = @"SELECT * FROM FengariInfo";
                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;
                adapter.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                
            }

        }

        protected void searchTxt_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            addBtn.Visible = false;
            Panel1.Visible = true;
        }

        protected void add_Click(object sender, EventArgs e)
        {
            //_______Add new data into DB_________
            //Variables
            string alias = aliasTxt.Text;
            Session["alias"] = alias;
            string num = numTxt.Text;
            Session["num"] = num;
            string colour = colourTxt.Text;
            Session["colour"] = colour;
            string date = dateTxt.Text;
            Session["date"] = date;

            try
            {
                if (Session["alias"] != null && Session["num"] != null && Session["colour"] != null && Session["date"] != null)
                {
                    SqlCommand command;
                    string sql;
                    conn = new SqlConnection(connString);
                    adapter = new SqlDataAdapter();
                    ds = new DataSet();

                    conn.Open();
                    sql = @"INSERT INTO FengariInfo (Alias, Num, Colour, Date) VALUES ('" + Session["alias"] + "','" + Session["num"] + "','" + Session["colour"] + "','" + Session["date"] + "')";
                    command = new SqlCommand(sql, conn);
                    adapter.SelectCommand = command;
                    adapter.Fill(ds);

                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }



        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            //_______Delete row from db
            try
            {
                SqlCommand cmd;
                string sql;
                conn = new SqlConnection(connString);
                adapter = new SqlDataAdapter();
                ds = new DataSet();


                sql = @"DELETE FROM FengariInfo WHERE Alias='" +
                searchTxt.Text + "'";
                cmd = new SqlCommand(sql, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Deleted successfully");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            //__________Search value in db
            SqlCommand cmd;
            string sql;
            conn = new SqlConnection(connString);
            sql = @"SELECT * from 
                    FengariInfo Where Alias Like '" +
                    searchTxt.Text + "'";
            conn.Open();
            adapter = new SqlDataAdapter(sql, conn);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
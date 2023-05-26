using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class _default : System.Web.UI.Page
    {
        public string myDate = "";
        //connection string
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\i7\source\repos\WebApplication2\WebApplication2\App_Data\fengariDB.mdf;Integrated Security=True";
        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapter;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            myDate = (Calendar1.SelectedDate).ToString("yyyy-MM-dd");
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDate = (Calendar1.SelectedDate).ToString("yyyy-MM-dd");
            Session["Date"] = myDate;
            HttpCookie _userCookie = new HttpCookie("UserInformation");
            _userCookie["Alias"] = aliasTxt.Text;
            _userCookie["Number"] = numTxt.Text;
            _userCookie["Colour"] = colourTxt.Text;
            Response.Cookies.Add(_userCookie);
            _userCookie.Expires = DateTime.Now.AddDays(5);
            string alias = _userCookie["Alias"];
            string num = _userCookie["Number"];
            string colour = _userCookie["Colour"];
            try
            {
                SqlCommand command;
                string sql;
                conn = new SqlConnection(connString);
                adapter = new SqlDataAdapter();
                ds = new DataSet();

                conn.Open();
                sql = @"INSERT INTO FengariInfo (Alias, Num, Colour, Date) VALUES ('" + alias + "','" + num + "','" + colour + "','" + Session["Date"] + "')";
                command = new SqlCommand(sql, conn);
                adapter.SelectCommand = command;
                adapter.Fill(ds);

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}
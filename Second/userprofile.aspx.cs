using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Second
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                
                TextBox1.Text = Session["username"].ToString();
                TextBox2.Text = Session["roll"].ToString(); 
                TextBox3.Text = Session["dept"].ToString(); 
                TextBox4.Text = Session["mobile"].ToString(); 
                TextBox5.Text = Session["email"].ToString();

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT c_id, c_title, heading, dscpt from approved where u_roll='"+Session["roll"]+"';", con);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                GridView1.DataSource = dt;
                
                GridView1.DataBind();   
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                

                 if(Session["pass"].Equals(TextBox6.Text.ToString()) && TextBox7.Text.ToString()==TextBox8.Text.ToString())
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE user_info set u_pass='"+ TextBox8.Text.Trim() +"'  where u_roll='" + TextBox2.Text.Trim() + "';", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Password successfully changed'); </script>");
                }
                else
                {
                    Response.Write("<script>alert('Wrong password'); </script>");
                }
              
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
    }
}
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
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing'); </script>");
            if (CheckUserExist())
            {
                Response.Write("<script>alert('Already registered. Log in or try another roll'); </script>");
            }
            else
            {
                SignUpUser();
                
            }
        }
        bool CheckUserExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * from user_info where u_roll='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
                return false;
            }
        }

        void SignUpUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("INSERT INTO user_info(u_roll,u_pass,u_name," +
                "u_dept,u_mobile,u_mail) VALUES(@roll,@password,@full_name,@dept,@mobile,@email)", con);

                cmd.Parameters.AddWithValue("@roll", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox6.Text);
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dept", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox5.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign up successful. Login please.'); </script>");
             
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }

        
    }
}
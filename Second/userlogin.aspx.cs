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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from user_info where u_roll='" + TextBox1.Text.Trim() + "' AND u_pass='" + TextBox2.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //Response.Write("<script>alert('" + dr.GetValue(2).ToString() + "'); </script>");
                        Session["roll"] = dr.GetValue(0).ToString();
                        Session["pass"]=dr.GetValue(1).ToString();
                        Session["username"] = dr.GetValue(2).ToString();
                        Session["dept"] = dr.GetValue(3).ToString();
                        Session["mobile"]=dr.GetValue(4).ToString();
                        Session["email"] = dr.GetValue(5).ToString();
                        
                        Session["role"] = "user";
                        
                    }
                    Response.Redirect("userprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials'); </script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }
    }
}
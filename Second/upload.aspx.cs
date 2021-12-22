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

    public partial class upload : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string Fname;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   

        bool CheckChothaExistPending()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * from pending where c_id='" + TextBox1.Text.Trim() + "';", con);
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
        bool CheckChothaExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("SELECT * from approved where c_id='" + TextBox1.Text.Trim() + "';", con);
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

        void UploadFile()
        {
            if (FileUpload1.HasFile)
            {
                string guid = Guid.NewGuid().ToString();
                Fname = guid + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Files/" + Fname));
            }
            else
            {
                Label1.Text = "Select file";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            try
            {
               
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }


                SqlCommand cmd = new SqlCommand("INSERT INTO pending(c_id,u_roll,addr," +
                "c_title,heading,dscpt) VALUES(@cid,@roll,@address,@title,@topic,@description)", con);

                cmd.Parameters.AddWithValue("@cid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@roll", Session["roll"]);
                cmd.Parameters.AddWithValue("@address", Fname);
                cmd.Parameters.AddWithValue("@title", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@topic", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Successful submission";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Write("<script>alert('Submitted for admin verification'); </script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox6.Text = "";



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Testing'); </script>");
           
            if(CheckChothaExist() || CheckChothaExistPending())
            {
                Label1.Text = "ID is occupied. Try another.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }    
            else
            {
                UploadFile();

            }

        }

    }
}
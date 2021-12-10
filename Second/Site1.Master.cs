using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Second
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button
                    LinkButton4.Visible = false; // find


                    LinkButton6.Visible = true; // admin login link button
                    LinkButton5.Visible = false; // upload
                   
                    LinkButton8.Visible = false; // acc manage
                    LinkButton9.Visible = false; // chotha manage
                   

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();
                    LinkButton4.Visible = true; // find

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton5.Visible = true; // upload
                    LinkButton8.Visible = false; // acc manage
                    LinkButton9.Visible = false; // chothamanage
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Hello Admin";
                    LinkButton4.Visible = true; // find

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton5.Visible = false; // upload
                    LinkButton8.Visible = true; // acc manage
                    LinkButton9.Visible = true; // chothamanage
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("find.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("accmanage.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("chothamanage.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("upload.aspx");
        }


        //logout
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Session["username"] = "";
            Session["roll"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button

            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            LinkButton4.Visible = false; // find


            LinkButton6.Visible = true; // admin login link button
            LinkButton5.Visible = false; // upload

            LinkButton8.Visible = false; // acc manage
            LinkButton9.Visible = false; // chotha manage

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            try 
            {
                if (Session["role"].Equals("admin"))
                {
                    Response.Redirect("chothamanage.aspx");
                }
                else if (Session["role"].Equals("user"))
                {
                    Response.Redirect("userprofile.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
           
        }


    }
}
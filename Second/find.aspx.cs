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
    public partial class find : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string downlink;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton linkdownload = sender as LinkButton;
            GridViewRow gridrow = linkdownload.NamingContainer as GridViewRow;
            string downloadfile = GridView1.DataKeys[gridrow.RowIndex].Value.ToString();
            Response.ContentType = ContentType;


            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from approved where c_id='" + downloadfile.Trim() + "';", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    downlink = dr.GetValue(2).ToString();

                }
                con.Close();
            }
            Response.AddHeader("Content-Disposition", "attachment;filename=" + downlink);
            downlink = "Files/" + downlink;

            Response.TransmitFile(Server.MapPath(downlink));
            Response.End();
        }
    }
}
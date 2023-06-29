using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_ASP
{
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlCon = new SqlConnection(strcon);
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("Insert into register([Username],[Email],[Password]) values (@Username,@Email,@Password);", sqlCon);
                sqlCmd.Parameters.AddWithValue("@Username", usernameregisterid.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", emailregisterid.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", passwordregisterid.Text.Trim());

                sqlCmd.ExecuteNonQuery();
                Response.Write("<script>alert('Successfully Registered')</script>");
                // lblSuccessMessage.Text = "Registered Successfully";

                sqlCon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception : " + ex.Message + "')</script>");
            }
        }
    }
}
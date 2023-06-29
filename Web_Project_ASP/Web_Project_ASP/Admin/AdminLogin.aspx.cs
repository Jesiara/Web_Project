using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_ASP.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Remove("UserName");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (IsFormValid())
            {
                // Response.Write("<script>alert('Success');</script>");
                try
                {
                    SqlCommand cmd = new SqlCommand("select Username,Password from AdminMst where Username=@Username and Password=@Password", con);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Parameters.AddWithValue("@Username", txtusername.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtpassword.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        
                        while (dr.Read())
                        {
                            Session["UserName"] = dr.GetValue(0).ToString();
                            Response.Write("<script>alert('Success');</script>");
                            Response.Redirect("AdminHome.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('validation error');</script>");
                        //Response.Redirect("AdminLogin.aspx");
                        txtusername.Text = string.Empty;
                        txtpassword.Text = string.Empty;
                        txtusername.Focus();
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('"+ex.Message+"');</script>");
                }
            }
            else
            {
                //Response.Write("<script>alert('validation error');</script>");
            }
        }

        private bool IsFormValid()
        {
            if(txtusername.Text == string.Empty )
            {
                Response.Write("<script>alert('Username is required');</script>");
                txtusername.Text = string.Empty;
                txtusername.Focus();
                return false;
            }
            if (txtpassword.Text == string.Empty)
            {
                Response.Write("<script>alert('Password is required');</script>");
                txtpassword.Text = string.Empty;
                txtpassword.Focus();
                return false;
            }
            //if (txtusername.Text != "Jesi")
            //{
            //    Response.Write("<script>alert('Right Username is required');</script>");
            //    txtusername.Text = string.Empty;
            //    txtusername.Focus();
            //    return false;
            //}
            //if (txtpassword.Text != "Jesi")
            //{
            //    Response.Write("<script>alert('Right Password is required');</script>");
            //    txtpassword.Text = string.Empty;
            //    txtpassword.Focus();
            //    return false;
            //}
            return true;
        }
    }
}
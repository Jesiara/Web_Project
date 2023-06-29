using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Web_Project_ASP.Admin
{
    
    public partial class AddCategory : System.Web.UI.Page
    {
        //string strcon = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"] !=null)
            {
                if(!IsPostBack)
                {
                   BindingGridview();
                }

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection(strcon);

            SqlCommand cmd = new SqlCommand("insert into CateMst (CName) values(@CName)", con);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Added Successfully');</script>");
            BindingGridview();
            txtCategory.Text = string.Empty;
            txtCategory.Focus();

        }
        private void BindingGridview()
        {
            SqlCommand cmd = new SqlCommand("select * from CateMst", con);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if(dt.Rows.Count>0)
            {
               // GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
               // GridView1.DataSource = null;
                GridView1.DataBind();
            }

        }
    }
}
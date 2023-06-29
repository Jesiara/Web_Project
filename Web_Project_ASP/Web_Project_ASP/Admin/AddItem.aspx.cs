using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace Web_Project_ASP.Admin
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserName"]!=null)
            {
                if(!IsPostBack)
                {
                    BindCategory();
                }

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (IsFormValidate())
            {
                fileUpload1.SaveAs(Server.MapPath("~/Images/") + fileUpload1.FileName);
                fileUpload2.SaveAs(Server.MapPath("~/Images/") + fileUpload2.FileName);
                fileUpload3.SaveAs(Server.MapPath("~/Images/") + fileUpload3.FileName);
                fileUpload4.SaveAs(Server.MapPath("~/Images/") + fileUpload4.FileName);

                
                SqlCommand cmd = new SqlCommand("insert into ItemMast(IName,Detail,price,Image,Qnt,CName,Image1,Image2,Image3,EntryDate) values (@IName,@Detail,@Price,@Image,@Qnt,@CName,@Image1,@Image2,@Image3,getDate())", con);


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@IName", txtItemName.Text);
                cmd.Parameters.AddWithValue("@Detail", txtDescription.Text);
                cmd.Parameters.AddWithValue("@Price",Convert.ToDouble( txtPrice.Text));
                cmd.Parameters.AddWithValue("@Image", fileUpload1.FileName);
                cmd.Parameters.AddWithValue("@Qnt",Convert.ToInt32(txtQty.Text));
                cmd.Parameters.AddWithValue("@CName",ddlCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Image1", fileUpload2.FileName);
                cmd.Parameters.AddWithValue("@Image2", fileUpload3.FileName);
                cmd.Parameters.AddWithValue("@Image3", fileUpload4.FileName );
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Product added successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Validation Error');</script>");
            }

        }

        private bool IsFormValidate()
        {
            if(txtItemName.Text == string.Empty)
            {
                Response.Write("<script>alert('Product name is required');</script>");
                txtItemName.Text = string.Empty;
                txtItemName.Focus();
                return false;


            }

            if (txtDescription.Text == string.Empty)
            {
                Response.Write("<script>alert('Description is required');</script>");
                txtDescription.Text = string.Empty;
                txtDescription.Focus();
                return false;


            }

            if (txtPrice.Text ==string.Empty)
            {
                Response.Write("<script>alert('Price is required');</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;


            }

            if (txtQty.Text==string.Empty)
            {
                Response.Write("<script>alert('Quantity is required');</script>");
                txtQty.Text = string.Empty;
                txtQty.Focus();
                return false;

            }

            if (ddlCategory.SelectedItem.Text=="")
            {
                Response.Write("<script>alert('Category is required');</script>");
                
                ddlCategory.Focus();
                return false;
            }

            return true;

        }

        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("select distinct CID,CName from CateMst", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if(dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CName";
                ddlCategory.DataValueField = "CID";
                ddlCategory.DataBind();
            }
            else
            {
                ddlCategory.DataSource = null;
                ddlCategory.DataBind();
            }
        }
    }
}
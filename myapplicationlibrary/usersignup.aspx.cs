using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myapplicationlibrary
{
    public partial class usersignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (member_exists() == true)
            {
                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signup_new_member();
            }


            void signup_new_member()
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name,dob,contact_no,email,state,city,postal_code,full_address,memeber_id,password,acccount_status) values(@full_name,@dob,@contact_no,@email,@state,@city,@postal_code,@full_address,@memeber_id,@password,@acccount_status)", con);

                    cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@postal_code", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@full_address", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@memeber_id", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@acccount_status", "pending");

                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                    con.Close();
                }
                catch (Exception exep)
                {
                    Response.Write("<script>alert('" + exep.Message + "');</script>");
                }
            }

            bool member_exists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE memeber_id='" + TextBox9.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
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
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }


            }
        }
    }
}
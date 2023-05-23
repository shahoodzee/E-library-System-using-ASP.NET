using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myapplicationlibrary
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // view books
                    LinkButton2.Visible = true; // user login

                    LinkButton3.Visible = true; // signup
                    LinkButton4.Visible = false; // logout

                    LinkButton5.Visible = false; // hello user
                    //LinkButton5.Text = "hello user"; // hello user

                    LinkButton6.Visible = true; // admin login
                    LinkButton7.Visible = false; // author management

                    LinkButton8.Visible = false; // publisher management
                    LinkButton9.Visible = false; // book inventory

                    LinkButton10.Visible = false; // book issuing
                    LinkButton11.Visible = false; // member management
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = true; // view books
                    LinkButton2.Visible = false; // user login

                    LinkButton3.Visible = false; // signup
                    LinkButton4.Visible = true; // logout

                    LinkButton5.Visible = true; // hello user
                    LinkButton5.Text = "hello admin"; // hello user

                    LinkButton6.Visible = false; // admin login
                    LinkButton7.Visible = true; // author management

                    LinkButton8.Visible = true; // publisher management
                    LinkButton9.Visible = true; // book inventory

                    LinkButton10.Visible = true; // book issuing
                    LinkButton11.Visible = true; // member management
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = true; // view books
                    LinkButton2.Visible = false; // user login

                    LinkButton3.Visible = false; // signup
                    LinkButton4.Visible = true; // logout

                    LinkButton5.Visible = true; // hello user

                    LinkButton6.Visible = false; // admin login
                    LinkButton7.Visible = false; // author management

                    LinkButton8.Visible = false; // publisher management
                    LinkButton9.Visible = false; // book inventory

                    LinkButton10.Visible = false; // book issuing
                    LinkButton11.Visible = false; // member management
                }



            }
            catch (Exception exep)
            {
                //Response.Write("<script>alert('" + exep.Message + "');</script>");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // view books
            LinkButton2.Visible = true; // user login

            LinkButton3.Visible = true; // signup
            LinkButton4.Visible = false; // logout

            LinkButton5.Visible = false; // hello user
                                         //LinkButton5.Text = "hello user"; // hello user

            LinkButton6.Visible = true; // admin login
            LinkButton7.Visible = false; // author management

            LinkButton8.Visible = false; // publisher management
            LinkButton9.Visible = false; // book inventory

            LinkButton10.Visible = false; // book issuing
            LinkButton11.Visible = false; // member management

            Response.Redirect("homee.aspx");
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}
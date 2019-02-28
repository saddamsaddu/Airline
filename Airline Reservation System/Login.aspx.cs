using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.Data.SqlClient;

namespace Airline_Reservation_System
{
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ARS_Connstring"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSignup_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SP_LOGINREGISTER", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", txtuserid.Text));
                cmd.Parameters.Add(new SqlParameter("@Password", txtpassword.Text));
                cmd.Parameters.Add(new SqlParameter("@Mode", "Login"));

                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.Read())
                {
                    if (rd["MESSAGE"].ToString() == "SUCCESS")
                    {
                        string LoginId = rd["USERNAME"].ToString();
                        string UserType = rd["USERTYPE"].ToString();
                        string Tile = rd["TITLE"].ToString();
                        string Name = rd["NAME"].ToString();
                        string Gender = rd["GENDER"].ToString();
                        string Mail = rd["EMAILID"].ToString();
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "Valid Id", "RedirectToHome(" + LoginId + "," + UserType + "," + Tile + "," + Name + "," + Gender + "," + Mail + ")", true);
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username or Password is Incorrect')", true);
                    }
                    //Console.WriteLine("Read Successfully");
                }
                else
                {

                }
            }

            catch(Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+ex.Message+"')", true);
            }
            finally
            {
                con.Close();
            }
           
        }
    }
}
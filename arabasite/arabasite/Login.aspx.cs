using arabasite.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace arabasite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_click(object sender, EventArgs e)
        {
             SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail = @pmail and UserPassword = @ppass",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass= sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass",shaPass);

            DataTable dt = new DataTable(); 
        
            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tboxMail.Text == "selman123@hotmail.com")
                {
                    Response.Redirect("Messages.aspx");
                }
                else
                {

                }

            }
            else
            {
                Response.Write("Mail veya şifre Hatalı");
            }
        }
    }
}
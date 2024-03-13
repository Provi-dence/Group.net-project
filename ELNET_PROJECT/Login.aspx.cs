using System;

namespace ELNET_PROJECT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Check if the entered credentials are correct
            if (username == "admin" && password == "1234")
            {
                // Redirect to admin panel
                Response.Redirect("AdminPanel.aspx");
            }
            else
            {
                // Display error message
                lblMessage.Text = "Invalid username or password.";
            }
        }
    }
}

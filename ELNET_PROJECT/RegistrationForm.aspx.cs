using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ELNET_PROJECT
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if event name is provided in the query string
                if (!string.IsNullOrEmpty(Request.QueryString["event"]))
                {
                    string eventName = Request.QueryString["event"];
                    EventLabel.Text = "Event: " + eventName;
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string fullName = FullNameTextBox.Text;
            string email = EmailTextBox.Text;
            string phone = PhoneTextBox.Text;
            string eventName = Request.QueryString["event"];

            // Save to Database
            string connectionString = ConfigurationManager.ConnectionStrings["ELNETConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Registrations (FullName, Email, Phone, EventName, RegistrationDate) VALUES (@FullName, @Email, @Phone, @EventName, @RegistrationDate)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Phone", phone);
                    command.Parameters.AddWithValue("@EventName", eventName);
                    command.Parameters.AddWithValue("@RegistrationDate", DateTime.Now);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }

            // Redirect to a thank you page or show a success message
            Response.Redirect($"ThankYouPage.aspx?FullName={fullName}&Email={email}&Phone={phone}&EventName={eventName}");
        }
    }
}

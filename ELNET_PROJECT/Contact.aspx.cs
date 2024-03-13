using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ELNET_PROJECT
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submitEvent_Click(object sender, EventArgs e)
        {
            // Retrieve form data
            string eventName = this.eventName.Text;
            string eventDescription = this.eventDescription.Text;
            string organizerName = this.organizerName.Text;
            string organizerEmail = this.organizerEmail.Text;
            string eventCategories = this.eventCategories.Text;

            // Insert data into the database
            string connectionString = ConfigurationManager.ConnectionStrings["ELNETConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Events (EventName, EventDescription, OrganizerName, OrganizerEmail, EventCategory) " +
                               "VALUES (@EventName, @EventDescription, @OrganizerName, @OrganizerEmail, @EventCategory)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@EventName", eventName);
                command.Parameters.AddWithValue("@EventDescription", eventDescription);
                command.Parameters.AddWithValue("@OrganizerName", organizerName);
                command.Parameters.AddWithValue("@OrganizerEmail", organizerEmail);
                command.Parameters.AddWithValue("@EventCategory", eventCategories);

                connection.Open();
                command.ExecuteNonQuery();
            }

            // Optionally, you can redirect the user to another page after successful submission
            Response.Redirect($"ConfirmationPage.aspx?EventName={eventName}&EventDescription={eventDescription}&OrganizerName={organizerName}&OrganizerEmail={organizerEmail}&EventCategory={eventCategories}");

        }
    }
}

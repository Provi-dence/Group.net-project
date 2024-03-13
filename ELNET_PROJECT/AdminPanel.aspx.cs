using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ELNET_PROJECT
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load data into the GridView
                BindEventData();
            }
        }

        protected void BindEventData()
        {
            // Connection string
            string connectionString = ConfigurationManager.ConnectionStrings["ELNETConnectionString"].ConnectionString;

            // Query to fetch event data
            string query = "SELECT EventID, OrganizerName, OrganizerEmail, EventName, EventDescription, EventCategory FROM Events";

            // Create a connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Open the connection
                connection.Open();

                // Execute the command and fetch data into a DataTable
                DataTable dataTable = new DataTable();
                using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                {
                    adapter.Fill(dataTable);
                }

                // Bind the DataTable to the GridView
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }

        protected void Approve_Click(object sender, EventArgs e)
        {
            string eventID = ((Button)sender).CommandArgument.ToString();
            UpdateEventStatus(eventID, "Approved");
        }

        protected void Reject_Click(object sender, EventArgs e)
        {
            string eventID = ((Button)sender).CommandArgument.ToString();
            UpdateEventStatus(eventID, "Rejected");
        }

        protected void UpdateEventStatus(string eventID, string status)
        {
            // Connection string
            string connectionString = ConfigurationManager.ConnectionStrings["ELNETConnectionString"].ConnectionString;

            // Query to update event status
            string query = "UPDATE Events SET Status = @Status WHERE EventID = @EventID";

            // Create a connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Add parameters
                command.Parameters.AddWithValue("@EventID", eventID);
                command.Parameters.AddWithValue("@Status", status);

                // Open the connection and execute the command
                connection.Open();
                command.ExecuteNonQuery();

                // Refresh the GridView
                BindEventData();
            }
        }
    }
}

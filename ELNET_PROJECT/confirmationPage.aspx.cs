using System;

namespace ELNET_PROJECT
{
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        protected string EventName { get; set; }
        protected string EventDescription { get; set; }
        protected string OrganizerName { get; set; }
        protected string OrganizerEmail { get; set; }
        protected string EventCategory { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve values from query string
            if (!IsPostBack)
            {
                // Check if query string parameters are present
                EventName = Request.QueryString["EventName"];
                EventDescription = Request.QueryString["EventDescription"];
                OrganizerName = Request.QueryString["OrganizerName"];
                OrganizerEmail = Request.QueryString["OrganizerEmail"];
                EventCategory = Request.QueryString["EventCategory"];
            }
        }
    }
}

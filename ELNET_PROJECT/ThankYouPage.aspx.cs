using System;

namespace ELNET_PROJECT
{
    public partial class ThankYouPage : System.Web.UI.Page
    {
        protected string FullName { get; set; }
        protected string Email { get; set; }
        protected string Phone { get; set; }
        protected string EventName { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve values from query string
            if (!IsPostBack)
            {
                // Check if query string parameters are present
                if (!string.IsNullOrEmpty(Request.QueryString["FullName"]))
                {
                    FullName = Request.QueryString["FullName"];
                }
                if (!string.IsNullOrEmpty(Request.QueryString["Email"]))
                {
                    Email = Request.QueryString["Email"];
                }
                if (!string.IsNullOrEmpty(Request.QueryString["Phone"]))
                {
                    Phone = Request.QueryString["Phone"];
                }
                if (!string.IsNullOrEmpty(Request.QueryString["EventName"]))
                {
                    EventName = Request.QueryString["EventName"];
                }
            }
        }
    }
}

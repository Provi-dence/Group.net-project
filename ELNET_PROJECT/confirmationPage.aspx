<%@ Page Title="Event Submission Confirmation" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ConfirmationPage.aspx.cs" Inherits="ELNET_PROJECT.ConfirmationPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <div class="row">
            <div class="col-md-8 mx-auto text-center">
                <h2 class="section-heading mb-5">Event Submitted Successfully!</h2>
                <p>Your event submission has been received. Thank you for your submission. Here are the details:</p>
                <div class="mt-4">
                    <ul class="list-unstyled">
                        <li><strong>Event Name:</strong> <%= EventName %></li>
                        <li><strong>Event Description:</strong> <%= EventDescription %></li>
                        <li><strong>Organizer Name:</strong> <%= OrganizerName %></li>
                        <li><strong>Organizer Email:</strong> <%= OrganizerEmail %></li>
                        <li><strong>Event Category:</strong> <%= EventCategory %></li>
                    </ul>
                </div>
                <p class="mt-4">You will receive a confirmation email shortly. If you have any questions, please contact us.</p>
            </div>
        </div>
    </div>
</asp:Content>

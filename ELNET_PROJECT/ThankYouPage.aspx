<%@ Page Title="Thank You!" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYouPage.aspx.cs" Inherits="ELNET_PROJECT.ThankYouPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-center">Thank You for Registering!</h2>
                        <p class="card-text text-center">We have received your registration for the event. You are now part of the exciting race!</p>
                        <p class="card-text text-center mt-3">Thank you!</p>
                        <hr />
                        <div class="text-center">
                            <h5>Registration Details:</h5>
                            <p><strong>Full Name:</strong> <%= FullName %></p>
                            <p><strong>Email:</strong> <%= Email %></p>
                            <p><strong>Phone Number:</strong> <%= Phone %></p>
                            <p><strong>Event Name:</strong> <%= EventName %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

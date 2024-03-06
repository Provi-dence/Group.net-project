<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ELNET_PROJECT.RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2>Event Registration</h2>
        <hr />
        <div>
            <asp:Label ID="EventLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="FullNameLabel" runat="server" Text="Full Name:" AssociatedControlID="FullNameTextBox"></asp:Label>
            <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="EmailLabel" runat="server" Text="Email:" AssociatedControlID="EmailTextBox"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Required="true" TextMode="Email"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="PhoneLabel" runat="server" Text="Phone Number:" AssociatedControlID="PhoneTextBox"></asp:Label>
            <asp:TextBox ID="PhoneTextBox" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
        </div>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit Registration" CssClass="btn btn-primary" OnClick="SubmitButton_Click" />
    </div>
</asp:Content>

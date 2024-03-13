<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="ELNET_PROJECT.AdminPanel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5">
        <h2 class="text-center">Organizer Events Approval</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
    <Columns>
        <asp:BoundField DataField="OrganizerName" HeaderText="Organizer Name" />
        <asp:BoundField DataField="OrganizerEmail" HeaderText="Organizer Email" />
        <asp:BoundField DataField="EventName" HeaderText="Event Name" />
        <asp:BoundField DataField="EventDescription" HeaderText="Event Description" />
        <asp:BoundField DataField="EventCategory" HeaderText="Event Category" />
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button runat="server" CommandName="Approve" CommandArgument='<%# Eval("EventID") %>' Text="Approve" OnClick="Approve_Click" />
                <asp:Button runat="server" CommandName="Reject" CommandArgument='<%# Eval("EventID") %>' Text="Reject" OnClick="Reject_Click" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

    </div>
</asp:Content>

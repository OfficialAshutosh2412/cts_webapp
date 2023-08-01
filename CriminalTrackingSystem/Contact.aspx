<%@ Page Title="CTS | Contact us" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CriminalTrackingSystem.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--contact form--%>
    <div class="pad-5 bg-body-secondary min-width">

        <div class="customContainer p-5 shadow-lg rounded bg-white">
            <h1 class="text-dark text-capitalize">Contact us</h1>
            <div class=" deflex">
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Your Name</label>
                    <asp:TextBox ID="ContactName" runat="server" type="text" class="form-control border-2 border-success "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Email address</label>
                    <asp:TextBox ID="ContactEmail" runat="server" type="email" class="form-control border-2 border-success "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Phone Number</label>
                    <asp:TextBox ID="ContactNumber" runat="server" type="text" class="form-control border-2 border-success "></asp:TextBox>
                </div>
            </div>
            <div class="mb-1 w-100 p-2">
                <label class="form-label" for="purpose">Purpose</label>
                <asp:TextBox ID="ContactPurpose" runat="server" class="form-control border-2 border-success "></asp:TextBox>
            </div>
            <div class="mb-1 p-2">
                <label class="form-label">Give Us Details</label>
                <asp:TextBox ID="ContactDetails" runat="server" TextMode="MultiLine" class="form-control   border-2 border-success "></asp:TextBox>
            </div>
            <asp:Button ID="ContactBtn" runat="server" Text="Send Us"  class="btn btn-success m-2" OnClick="ContactBtn_Click"/>

            <asp:Label ID="Label1" runat="server" ForeColor="#339933"></asp:Label>

        </div>
    </div>
</asp:Content>

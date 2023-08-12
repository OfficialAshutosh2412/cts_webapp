<%@ Page Title="CTS | Contact us" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CriminalTrackingSystem.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-light bg-dark text-capitalize  p-5 shadow-lg"><i class="fa-solid fa-phone"></i>Contact us</h1>
    <%--contact form--%>
    <div class=" bg-body-secondary min-width contact-us-container">
        <div class="p-3 shadow-lg rounded bg-white">
            <div class=" deflex">
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Your Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ContactName" ErrorMessage="*Name required" ForeColor="#FF5050">**</asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="ContactName" runat="server" type="text" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Email address<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ContactEmail" ErrorMessage="*Email required" ForeColor="#FF5050">**</asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="ContactEmail" runat="server" type="email" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">Phone Number<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ContactNumber" ErrorMessage="*phone number is required" ForeColor="#FF5050">**</asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="ContactNumber" runat="server" type="text" class="cc-box " MaxLength="13"></asp:TextBox>
                </div>
            </div>
            <div class="mb-1 w-100 p-2">
                <label class="form-label" for="purpose">Purpose</label>
                <asp:TextBox ID="ContactPurpose" runat="server" class="cc-box "></asp:TextBox>
            </div>
            <div class="mb-1 p-2">
                <label class="form-label">Give Us Details<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ContactDetails" ErrorMessage="*details required" ForeColor="#FF5050">**</asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="ContactDetails" runat="server" TextMode="MultiLine" class="cc-box "></asp:TextBox>
            </div>
            <asp:Button ID="ContactBtn" runat="server" Text="submit details"  class="cc-btn" OnClick="ContactBtn_Click"/>

            <asp:Label ID="Label1" runat="server" ForeColor="#339933"></asp:Label>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="d-none" ShowMessageBox="True"/>

        </div>
    </div>
</asp:Content>

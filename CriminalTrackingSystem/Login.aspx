<%@ Page Title="CTS | Login" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CriminalTrackingSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-body-secondary pad-5 min-width">
        <div class="signin bg-white p-5 shadow-lg rounded">
            <h1>Login</h1>
            <div class="mb-3">
                <label class="form-label">Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginName" ErrorMessage="*fill username " ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="LoginName" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LoginPassword" ErrorMessage="*password is required  to login " ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" class="cc-box"></asp:TextBox>

            </div>
            <asp:Button ID="Button1" runat="server" Text="login now !" class="send p-2" OnClick="Button1_Click"/><br />
            
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-secondary" NavigateUrl="~/Signup.aspx">click here to create account...</asp:HyperLink>
            
            <asp:ValidationSummary ID="ValidationSummary1" CssClass="d-none" runat="server" ShowMessageBox="True" />
            
            <div><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label></div>
        </div>
    </div>

</asp:Content>

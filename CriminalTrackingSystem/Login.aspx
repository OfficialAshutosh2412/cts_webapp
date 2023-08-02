<%@ Page Title="CTS | Login" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CriminalTrackingSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-body-secondary pad-5 min-width">
        <div class="signin bg-white p-5 shadow-lg rounded">
            <h1>Login</h1>
            <div class="mb-3">
                <label class="form-label">Username</label>
                <asp:TextBox ID="LoginName" runat="server" class="form-control border-2 border-success"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" class="form-control border-2 border-success"></asp:TextBox>

            </div>
            <asp:Button ID="Button1" runat="server" Text="login" class="btn  btn-success" OnClick="Button1_Click"/>
            
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-success" NavigateUrl="~/Signup.aspx">click here lo create account...</asp:HyperLink>
            
            <div><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label></div>
        </div>
    </div>

</asp:Content>

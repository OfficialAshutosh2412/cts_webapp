<%@ Page Title="CTS | Login" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CriminalTrackingSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%--login--%>
    <div class="signin bg-white p-5  rounded">
        <h1>Login</h1>
        <div class="mb-3">
            <i class="fa-solid fa-user"></i><label class="form-label fw-bolder">Username</label>
            <asp:TextBox ID="LoginName" runat="server" class="cc-box"></asp:TextBox>
        </div>
        <div class="mb-3">
            <i class="fa-solid fa-key"></i><label class="form-label fw-bolder">Password</label>
            <asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" class="cc-box" ></asp:TextBox>
        </div>
        <div class="d-flex justify-content-start align-items-center">
            <asp:Button ID="Button1" runat="server" Text="login now !" OnClientClick="return validateLogin()" class="send p-2" OnClick="Button1_Click" /><br />
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-dark fw-bolder" NavigateUrl="~/Signup.aspx">click here to create account...</asp:HyperLink>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label>
        </div>
    </div>


    <script>
        //login validation
        function validateLogin() {
            var lname = document.getElementById('<%= LoginName.ClientID %>').value;
            var lpass = document.getElementById('<%= LoginPassword.ClientID %>').value;
            if (lname == "" || lpass == "") {
                alert("field is empty !");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</asp:Content>

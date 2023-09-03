<%@ Page Title="CTS | User Home Panel" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="RegisterHome.aspx.cs" Inherits="CriminalTrackingSystem.Registration.RegisterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-home-modal p-5 text-white bg-dark">
        <h1>Welcome, 
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" class="text-capitalize"></asp:Label>
            <asp:HyperLink ID="HyperLink5" runat="server" title="profile" NavigateUrl="~/Registration/Profile.aspx"><i class="fa-solid fa-user-pen"></i></asp:HyperLink>
        </h1>
    </div>
    <div class="register-card">
        <div>
            <img src="../dist/img/trial.png" />
            <h4>File Crimes</h4>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/CrimeComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/letter.png" />
            <h4>File Complain</h4>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/GeneralComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/user.png" />
            <h4>File Missings </h4>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingPerson.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/diamond_2600353.png" />
            <h4>File Missing Valuable</h4>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingValuable.aspx">go now !</asp:HyperLink>
        </div>
    </div>
</asp:Content>

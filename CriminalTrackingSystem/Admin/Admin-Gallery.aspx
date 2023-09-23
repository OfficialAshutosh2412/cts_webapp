<%@ Page Title="CTS | Admin | Gallery" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin-Gallery.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Admin_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><i class="fa-solid fa-images text-light"></i>Gallery</h1>
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="admin-gallery">
        <div>
            <asp:RadioButton ID="RadioButton1" CssClass="admin-radio" runat="server" Text="Upload for Events" GroupName="uploader" Checked="True" AutoPostBack="True" />
            <asp:RadioButton ID="RadioButton2" CssClass="admin-radio" runat="server" Text="Upload for Criminals" GroupName="uploader"  AutoPostBack="True" />
        </div>
        <div class="admin-gallery-form">
            <div>
                <asp:TextBox runat="server" CssClass="cc-box"  ID="criminalName" placeholder="criminal name" />
                <asp:TextBox runat="server" CssClass="cc-box"  ID="EventName" placeholder="Event Name" />
                <asp:TextBox runat="server"  CssClass="cc-box" ID="AffectedOrganisation" placeholder="Affected Organisation" />
            </div>
           
            <div>
                <asp:TextBox runat="server" CssClass="cc-box" ID="Reward" placeholder="Reward" />
                <asp:TextBox runat="server" CssClass="cc-box" ID="Details" placeholder="Criminal Details" />
            </div>
           
            <div> <asp:FileUpload ID="FileUpload1" AllowMultiple="true" CssClass="cc-box text-dark" runat="server" placeholder="Criminal Image"/></div>
            <div>
                <asp:Button Text="send" CssClass="send" runat="server"  ID="eventBtn" title="event button" OnClick="eventBtn_Click"/>
                <asp:Button Text="send" CssClass="send" runat="server" ID="crimeBtn" title="crime button" OnClick="crimeBtn_Click"/>
            </div>
        </div>
    </div>
    
    <hr />

</asp:Content>

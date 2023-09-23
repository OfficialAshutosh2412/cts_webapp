<%@ Page Title="CTS | Gallery" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="CriminalTrackingSystem.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="gallery-card">
        <div id="gal-1">
            <h1><i class="fa-solid fa-images fa-beat-fade"></i> Event Gallery</h1>
            <asp:Button Text="go now" runat="server" CssClass="send" OnClick="Unnamed1_Click" />

        </div>
        <div id="gal-2">
            <h1><i class="fa-solid fa-images fa-beat-fade"></i> Criminal Gallery</h1>
            <asp:Button Text="go now" runat="server" CssClass="send" OnClick="Unnamed2_Click" />

        </div>
    </div>
</asp:Content>

<%@ Page Title="CTS | Gallery" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="CriminalTrackingSystem.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gallery-card">
        <div>

            <h1>Event Gallery</h1>
            <asp:Button Text="go now" runat="server" CssClass="send" OnClick="Unnamed1_Click" />

        </div>
        <div>

            <h1>Criminal Gallery</h1>
            <asp:Button Text="go now" runat="server" CssClass="send" OnClick="Unnamed2_Click" />

        </div>
    </div>
</asp:Content>

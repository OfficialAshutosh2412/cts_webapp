<%@ Page Title="CTS | Gallery | Events" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="EventGallery.aspx.cs" Inherits="CriminalTrackingSystem.EventGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="event-gallery-container">
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Picture] FROM [EventGallery]"></asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
              <ItemTemplate>
                  <div class="event-gallery">
                      <div><asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Picture","~/Admin/AdminGallery/Events/{0}") %>' /></div>
                      <div class="gal-label"><asp:Label ID="TitleLabel"  runat="server" Text='<%# Eval("Title") %>' /></div>
                  </div>
              </ItemTemplate> 
        </asp:ListView>

    </div>
</asp:Content>

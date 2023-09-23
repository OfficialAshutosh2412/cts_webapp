<%@ Page Title="CTS | Gallery | Events" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="EventGallery.aspx.cs" Inherits="CriminalTrackingSystem.EventGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="background:linear-gradient(135deg, #fab157,#3bad3f)">
        <h1>Independence Day 2023</h1>
        <div class="crime-gallery-container" style="margin-top: 10px !important;">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="crime-gallery">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Picture","~/Admin/AdminGallery/Events/{0}") %>' />
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Picture] FROM [EventGallery] WHERE ([Title] = @Title)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Independence Day 2023" Name="Title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </section>
    <section style="background:linear-gradient(135deg, #a1a1a1,#575757,#3d3d3d,#ebebeb)">
        <h1>Chandrayan-3 2023</h1>
        <div class="crime-gallery-container" style="margin-top: 10px !important">
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div class="crime-gallery">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Picture","~/Admin/AdminGallery/Events/{0}") %>' />
                    </div>
                </ItemTemplate>
            </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Picture] FROM [EventGallery] WHERE ([Title] = @Title)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Chandrayan-3 2023" Name="Title" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </section>
    <section style="background:linear-gradient(135deg,#93ed9b,#49b89e)">
            <h1>Parade and helpline number releasings.</h1>
            <div class="crime-gallery-container" style="margin-top: 10px !important">
                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="crime-gallery">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Picture","~/Admin/AdminGallery/Events/{0}") %>' />
                    </div>
                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Picture] FROM [EventGallery] WHERE ([Title] = @Title)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Parade and Helpline number Releases." Name="Title" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
    </section>
</asp:Content>

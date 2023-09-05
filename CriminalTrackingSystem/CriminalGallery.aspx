<%@ Page Title="" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="CriminalGallery.aspx.cs" Inherits="CriminalTrackingSystem.CriminalGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="event-gallery-container">

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


            <ItemTemplate>
                <div class="crime-gallery">
                    <div>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("ProfilePhoto","~/Admin/AdminGallery/Crimes/{0}") %>' /></div>
                    <div class="bg-dark text-light">
                        <h4>
                            <asp:Label ID="CiminalNameLabel" runat="server" Text='<%# Eval("CiminalName") %>' /></h4>
                    </div>
                    <div class="details ">
                        <strong>
                            <asp:Label Text="Affected Org." runat="server" />
                            <asp:Label Text=":" runat="server" />
                        </strong>
                        <asp:Label ID="AffectedOrganisationLabel" runat="server" Text='<%# Eval("AffectedOrganisation") %>' />
                    </div>
                    <div class="details ">
                        <strong>
                            <asp:Label Text="Reward" runat="server" />
                            <asp:Label Text=":" runat="server" />
                        </strong>
                        <asp:Label ID="RewardLabel" runat="server" Text='<%# Eval("Reward") %>' />
                    </div>
                    <div class="details">
                        <strong>
                            <asp:Label Text="Details" runat="server" />
                            <asp:Label Text=":" runat="server" />
                        </strong>
                        <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CiminalName], [AffectedOrganisation], [Reward], [ProfilePhoto], [Details] FROM [CriminalGallery]"></asp:SqlDataSource>

    </div>
</asp:Content>

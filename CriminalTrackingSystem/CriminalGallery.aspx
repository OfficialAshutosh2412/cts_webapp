<%@ Page Title="CTS | Gallery | Criminal Images" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="CriminalGallery.aspx.cs" Inherits="CriminalTrackingSystem.CriminalGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="crime-gallery-container">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="crime-gallery">
                    <div class="crime-data">
                        <div>
                            <h1>
                                <asp:Label ID="CiminalNameLabel" runat="server" Text='<%# Eval("CiminalName") %>' /></h1>
                        </div>
                        <hr />
                        <div>
                            <h3><strong>Reward - </strong>
                                <asp:Label ID="RewardLabel" runat="server" Text='<%# Eval("Reward") %>' />
                                <label>Rs/-</label>
                            </h3>
                        </div>
                        <hr />
                        <div>
                            <strong>
                                <label>Affected Place</label></strong><br />
                            <asp:Label ID="AffectedOrganisationLabel" runat="server" Text='<%# Eval("AffectedOrganisation") %>' />
                        </div>
                        <hr />
                        <div><strong>
                            <label>Details</label></strong><br />
                            <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' /></div>

                    </div>
                    <div class="crime-pic">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("ProfilePhoto","~/Admin/AdminGallery/Crimes/{0}") %>' />
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CiminalName], [AffectedOrganisation], [Reward], [ProfilePhoto], [Details] FROM [CriminalGallery]"></asp:SqlDataSource>

    </div>
</asp:Content>

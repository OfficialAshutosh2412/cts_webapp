<%@ Page Title="CTS | Gallery | Events" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="EventGallery.aspx.cs" Inherits="CriminalTrackingSystem.EventGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="event-gallery-container">
        <div class="img-thumb">
            <asp:Image CssClass="imgbtn" ImageUrl="~/dist/img/Happy-Independence-Day-Images1_64da6e31a9b59.jpg" runat="server" />
            <label  id="hide" class="send">see images</label>
        </div>
            
        <div class="img-thumb">
            <asp:Image CssClass="imgbtn" ImageUrl="~/dist/img/chandrayaan-3-news-live-today-landing-isro-south-pole-vikram-lander-photos-pictures-1.jpg" runat="server" />
            <label  id="chandrahide" class="send">see images</label>
        </div>

    </div>
    <%--independence--%>
    <div class="ind-hide ind-show" id="show">
        <label id="close" class="delete">close</label>
        <h1 class="text-center">Moment of Captures of Independence Day 2023 at Delhi.</h1>
        <div class="independence">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="independence">
                        <figure class="column">
                            <asp:ImageButton CssClass="inimg" ID="Image1"  runat="server" ImageUrl='<%# Eval("Picture","Admin/AdminGallery/Events/{0}") %>' />
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Picture] FROM [EventGallery] WHERE ([Title] = @Title)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Independence Day 2023" Name="Title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <%--chandrayan-3--%>
    <div class="chandra-hide chandra-show" id="chandra-show">
        <label id="chandraclose" class="delete">close</label>
        <h1 class="text-center">Moment of Captures of successfull landing of lander on moon.</h1>
        <div class="independence">
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div class="independence">
                        <figure class="column">
                            <asp:ImageButton CssClass="inimg" ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","Admin/AdminGallery/Events/{0}") %>' />
                        </figure>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Picture] FROM [EventGallery] WHERE ([Title] = @Title)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Chandrayan-3 2023" Name="Title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
    </div>

</asp:Content>

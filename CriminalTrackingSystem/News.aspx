<%@ Page Title="CTS | News & Updates" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="CriminalTrackingSystem.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="news-h1"><i class="fa-solid fa-newspaper"></i>News</h1>
    <div class="leftnews">
        <asp:GridView ID="GridView1" CssClass="w-100 table table-group-divider" runat="server" AutoGenerateColumns="False" DataKeyNames="Nid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Nid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Nid" />
                <asp:BoundField DataField="Ntitle" HeaderText="Ttitle" SortExpression="Ntitle" />
                <asp:BoundField DataField="Ndate" HeaderText="Date" SortExpression="Ndate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nid], [Ntitle], [Ndate] FROM [News] ORDER BY [Nid] DESC"></asp:SqlDataSource>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--right--%>
            <div class="rightnews">
                <div class="policeItem">
                    <div>
                        <strong>
                            <asp:Label Text="find using title" runat="server" /></strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="cc-box" DataSourceID="SqlDataSource2" DataTextField="Ntitle" DataValueField="Ntitle" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Selected="True">-select title-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Ntitle] FROM [News] ORDER BY [Ntitle] DESC"></asp:SqlDataSource>
                    </div>
                    <div>
                        <strong>
                            <asp:Label Text="find using date" runat="server" /></strong>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="cc-box" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="Ndate" DataValueField="Ndate" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                            <asp:ListItem Selected="True">-select date-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Ndate] FROM [News]"></asp:SqlDataSource>

                    </div>
                    <div>
                        <strong>
                            <asp:Label Text="find using id" runat="server" /></strong>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="cc-box" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="Nid" DataValueField="Nid" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                            <asp:ListItem Selected="True">-select id-</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Nid] FROM [News] ORDER BY [Nid] DESC"></asp:SqlDataSource>
                    </div>
                </div>
                <hr />
                <%--showing details--%>
                <div class="p-3">
                    <strong>
                        <asp:Label Text="Id: " runat="server" /><asp:Label runat="server" ID="id" /></strong><br />
                    <small>
                        <strong>
                            <asp:Label Text="Date: " runat="server" /></strong>
                        <asp:Label runat="server" ID="date" /></small><br />
                    <hr />
                    <strong>
                        <asp:Label Text="Title: " runat="server" />
                    </strong>
                    <asp:Label runat="server" ID="title" />
                    <br />
                    <hr />
                    <div>
                        <strong>
                            <asp:Label Text="Details: " runat="server" /></strong>
                        <asp:Label runat="server" ID="detail" />
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

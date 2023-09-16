<%@ Page Title="CTS | Help Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="CriminalTrackingSystem.Registration.Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="help">
        <h1>How can we help  you..!
        </h1>
        <div class="help-db">
            <asp:GridView ID="GridView1" CssClass=" table w-100 rounded" runat="server" AutoGenerateColumns="False" DataKeyNames="FaqId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Question" HeaderText="Recent questions" SortExpression="Question" />
                    <asp:BoundField DataField="FaqId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="FaqId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Question], [FaqId] FROM [Faq]"></asp:SqlDataSource>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="help-data">
                    <h2>View your answer here...</h2>
                    <div class="help-search">
                        <div>
                            <asp:Label Text="View Details using ID" runat="server" />
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="cc-box mb-3" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="FaqId" DataValueField="FaqId" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Selected="True">select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FaqId] FROM [Faq] ORDER BY [FaqId] DESC"></asp:SqlDataSource>
                        </div>

                        <div>
                            <asp:Label Text="View Details using title" runat="server" />
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="cc-box" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="Question" DataValueField="Question" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                <asp:ListItem Selected="True">select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Question] FROM [Faq] ORDER BY [Question] DESC"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="p-2">
                        <strong>
                            <asp:Label Text="id - " runat="server" />
                        </strong>
                        <asp:Label ID="id" runat="server" />
                    </div>
                    <hr />
                    <div class="p-2">
                        <strong>
                            <asp:Label Text="Details - " runat="server" />
                        </strong>
                        <asp:Label ID="detail" runat="server" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

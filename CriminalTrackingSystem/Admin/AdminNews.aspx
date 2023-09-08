<%@ Page Title="CTS | Admin | News" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminNews.aspx.cs" Inherits="CriminalTrackingSystem.Admin.AdminNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><i class="fa-solid fa-newspaper text-light"></i> News</h1>
    <hr />
    <div class="policeContainer">
        <div class="policeItem">
            <div>
                <asp:Label Text="Title" runat="server" />
                <asp:TextBox runat="server" ID="title" CssClass="cc-box" placeholder="Title of news"/>
            </div>
            <div style="width:30%">
                <asp:Label Text="Date" runat="server" />
                <asp:TextBox runat="server" ID="datetime" CssClass="cc-box" TextMode="DateTimeLocal"/>
            </div>
        </div>
        <div class="policeItem">
            <div >
                <asp:Label Text="Details" runat="server" />
                <asp:TextBox runat="server" ID="data" CssClass="cc-box" placeholder="Details of news"/>
            </div>            
        </div>
        <div class="policeItem">
            <div style="width:10%">
                <asp:Button Text="send" runat="server"  CssClass="send" OnClick="Unnamed4_Click" />
            </div>
        </div>
    </div>
    <%--grid view--%>
    <div class="faq-grid">
        <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="Nid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="Nid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Nid" />
                <asp:BoundField DataField="Ntitle" HeaderText="Title" SortExpression="Ntitle" />
                <asp:BoundField DataField="Ndata" HeaderText="Details" SortExpression="Ndata" />
                <asp:BoundField DataField="Ndate" HeaderText="Datetime" SortExpression="Ndate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [Nid] = @Nid" InsertCommand="INSERT INTO [News] ([Ntitle], [Ndata], [Ndate]) VALUES (@Ntitle, @Ndata, @Ndate)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Ntitle] = @Ntitle, [Ndata] = @Ndata, [Ndate] = @Ndate WHERE [Nid] = @Nid">
            <DeleteParameters>
                <asp:Parameter Name="Nid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ntitle" Type="String" />
                <asp:Parameter Name="Ndata" Type="String" />
                <asp:Parameter Name="Ndate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ntitle" Type="String" />
                <asp:Parameter Name="Ndata" Type="String" />
                <asp:Parameter Name="Ndate" Type="String" />
                <asp:Parameter Name="Nid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

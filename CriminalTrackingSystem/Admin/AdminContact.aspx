<%@ Page Title="CTS | Admin | Contact Requests" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="CriminalTrackingSystem.Admin.AdminContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><i class="fa-solid fa-message text-light"></i>Contact Requests</h1>
    <hr />
    <div class="policeContainer">
        <div class="policeItem">
            <div>
                <asp:Label Text="Username" runat="server" />
                <asp:DropDownList ID="username" CssClass="cc-box" runat="server" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
                    <asp:ListItem Selected="True">--select user--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Username] FROM [Contact]"></asp:SqlDataSource>
            </div>
            <div>
                <asp:Label Text="Email" runat="server" />
                <asp:TextBox runat="server" CssClass="cc-box p-1" ID="email"/>
            </div>
        </div>
        <div class="policeItem">
            <div>
                <asp:Label Text="Reply" runat="server" />
                <asp:TextBox runat="server" CssClass="cc-box" ID="reply" TextMode="MultiLine" Rows="4"/>
            </div>
        </div>
        <div class="policeItem">
            <div>
                <asp:Button Text="send" runat="server" class="send p-1" ID="send" style="width:fit-content" OnClick="send_Click"/>
            </div>
        </div>
        <hr />
    </div>
    <%--gridview--%>
    <div class="faq-grid">
        <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="ContactId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ContactId" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" SortExpression="ContactNumber" />
                <asp:BoundField DataField="Purpose" HeaderText="Purpose" SortExpression="Purpose" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contact] WHERE [ContactId] = @ContactId" InsertCommand="INSERT INTO [Contact] ([Username], [Email], [ContactNumber], [Purpose], [Details]) VALUES (@Username, @Email, @ContactNumber, @Purpose, @Details)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [Username] = @Username, [Email] = @Email, [ContactNumber] = @ContactNumber, [Purpose] = @Purpose, [Details] = @Details WHERE [ContactId] = @ContactId">
            <DeleteParameters>
                <asp:Parameter Name="ContactId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="Decimal" />
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="Decimal" />
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="ContactId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

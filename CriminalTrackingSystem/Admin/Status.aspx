<%@ Page Title="CTS | Admin | Status" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--cc--%>
    <div class="admin-cc">
        <h3 ><i class="fa-solid fa-handcuffs counters"></i> Crime Complains Records</h3>
        <asp:GridView ID="GridView1" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="CCId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
            <asp:BoundField DataField="CCId" HeaderText="CCId" InsertVisible="False" ReadOnly="True" SortExpression="CCId" />
            <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
            <asp:BoundField DataField="CrimeDate" HeaderText="CrimeDate" SortExpression="CrimeDate" />
            <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CrimeComplain] WHERE [CCId] = @CCId" InsertCommand="INSERT INTO [CrimeComplain] ([LoginUsername], [CrimeDate], [CDT], [Status]) VALUES (@LoginUsername, @CrimeDate, @CDT, @Status)" SelectCommand="SELECT [CCId], [LoginUsername], [CrimeDate], [CDT], [Status] FROM [CrimeComplain]" UpdateCommand="UPDATE [CrimeComplain] SET [LoginUsername] = @LoginUsername, [CrimeDate] = @CrimeDate, [CDT] = @CDT, [Status] = @Status WHERE [CCId] = @CCId">
        <DeleteParameters>
            <asp:Parameter Name="CCId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoginUsername" Type="String" />
            <asp:Parameter Name="CrimeDate" Type="String" />
            <asp:Parameter Name="CDT" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LoginUsername" Type="String" />
            <asp:Parameter Name="CrimeDate" Type="String" />
            <asp:Parameter Name="CDT" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CCId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <%--gc--%>
    <div class="admin-gc">
        <h3><i class="fa-solid fa-file-signature counters"></i> General Complains Records</h3>
        <asp:GridView ID="GridView2" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="GCId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="GCId" HeaderText="GCId" InsertVisible="False" ReadOnly="True" SortExpression="GCId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [GeneralComplain] WHERE [GCId] = @GCId" InsertCommand="INSERT INTO [GeneralComplain] ([LoginUsername], [Title], [CDT], [Status]) VALUES (@LoginUsername, @Title, @CDT, @Status)" SelectCommand="SELECT [GCId], [LoginUsername], [Title], [CDT], [Status] FROM [GeneralComplain]" UpdateCommand="UPDATE [GeneralComplain] SET [LoginUsername] = @LoginUsername, [Title] = @Title, [CDT] = @CDT, [Status] = @Status WHERE [GCId] = @GCId">
            <DeleteParameters>
                <asp:Parameter Name="GCId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="GCId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <%--mp--%>
    <div class="admin-mp">
        <h3><i class="fa-solid fa-person counters"></i>Missing Person Records</h3>
        sadasd
        <asp:GridView ID="GridView3" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="MPId" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="MPId" HeaderText="MPId" InsertVisible="False" ReadOnly="True" SortExpression="MPId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
                <asp:BoundField DataField="MPName" HeaderText="MPName" SortExpression="MPName" />
                <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MissingPerson] WHERE [MPId] = @MPId" InsertCommand="INSERT INTO [MissingPerson] ([LoginUsername], [MPName], [CDT], [Status]) VALUES (@LoginUsername, @MPName, @CDT, @Status)" SelectCommand="SELECT [MPId], [LoginUsername], [MPName], [CDT], [Status] FROM [MissingPerson]" UpdateCommand="UPDATE [MissingPerson] SET [LoginUsername] = @LoginUsername, [MPName] = @MPName, [CDT] = @CDT, [Status] = @Status WHERE [MPId] = @MPId">
            <DeleteParameters>
                <asp:Parameter Name="MPId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="MPName" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="MPName" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="MPId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div class="admin-mv">
        <h3><i class="fa-regular fa-gem counters"></i>Missing Valuable Records</h3>
        sdasd
        <asp:GridView ID="GridView4" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="MVId" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="MVId" HeaderText="MVId" InsertVisible="False" ReadOnly="True" SortExpression="MVId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
                <asp:BoundField DataField="ValuableType" HeaderText="ValuableType" SortExpression="ValuableType" />
                <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MissingValuable] WHERE [MVId] = @MVId" InsertCommand="INSERT INTO [MissingValuable] ([LoginUsername], [ValuableType], [CDT], [Status]) VALUES (@LoginUsername, @ValuableType, @CDT, @Status)" SelectCommand="SELECT [MVId], [LoginUsername], [ValuableType], [CDT], [Status] FROM [MissingValuable]" UpdateCommand="UPDATE [MissingValuable] SET [LoginUsername] = @LoginUsername, [ValuableType] = @ValuableType, [CDT] = @CDT, [Status] = @Status WHERE [MVId] = @MVId">
            <DeleteParameters>
                <asp:Parameter Name="MVId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="ValuableType" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="ValuableType" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="MVId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

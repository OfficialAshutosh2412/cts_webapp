<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin-MP.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Admin_MP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-content-height">
        <h1><i class="fa-solid fa-person"></i>Missing Person Files</h1>
        <asp:GridView ID="GridView1" CssClass="w-100 table table-responsive table-dark" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MPId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="MPId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MPId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="Username" SortExpression="LoginUsername" />
                <asp:BoundField DataField="PoliceStation" HeaderText="Police Station" SortExpression="PoliceStation" />
                <asp:BoundField DataField="MPName" HeaderText="Person Name" SortExpression="MPName" />
                <asp:BoundField DataField="MPContactNumber" HeaderText="Person Contact" SortExpression="MPContactNumber" />
                <asp:BoundField DataField="MPEmailId" HeaderText="Person Email" SortExpression="MPEmailId" />
                <asp:BoundField DataField="LastViewLocation" HeaderText="Last View Location" SortExpression="LastViewLocation" />
                <asp:BoundField DataField="Ransom" HeaderText="Ransom" SortExpression="Ransom" />
                <asp:BoundField DataField="Dob" HeaderText="Person DOB" SortExpression="Dob" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="LatestPhoto" HeaderText="Latest Photo" SortExpression="LatestPhoto" />
                <asp:BoundField DataField="CDT" HeaderText="Report Datetime" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MissingPerson] WHERE [MPId] = @MPId" InsertCommand="INSERT INTO [MissingPerson] ([LoginUsername], [PoliceStation], [MPName], [MPContactNumber], [MPEmailId], [LastViewLocation], [Ransom], [Dob], [Details], [LatestPhoto], [CDT], [Status]) VALUES (@LoginUsername, @PoliceStation, @MPName, @MPContactNumber, @MPEmailId, @LastViewLocation, @Ransom, @Dob, @Details, @LatestPhoto, @CDT, @Status)" SelectCommand="SELECT * FROM [MissingPerson]" UpdateCommand="UPDATE [MissingPerson] SET [LoginUsername] = @LoginUsername, [PoliceStation] = @PoliceStation, [MPName] = @MPName, [MPContactNumber] = @MPContactNumber, [MPEmailId] = @MPEmailId, [LastViewLocation] = @LastViewLocation, [Ransom] = @Ransom, [Dob] = @Dob, [Details] = @Details, [LatestPhoto] = @LatestPhoto, [CDT] = @CDT, [Status] = @Status WHERE [MPId] = @MPId">
            <DeleteParameters>
                <asp:Parameter Name="MPId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="MPName" Type="String" />
                <asp:Parameter Name="MPContactNumber" Type="Decimal" />
                <asp:Parameter Name="MPEmailId" Type="String" />
                <asp:Parameter Name="LastViewLocation" Type="String" />
                <asp:Parameter Name="Ransom" Type="String" />
                <asp:Parameter Name="Dob" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="LatestPhoto" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="MPName" Type="String" />
                <asp:Parameter Name="MPContactNumber" Type="Decimal" />
                <asp:Parameter Name="MPEmailId" Type="String" />
                <asp:Parameter Name="LastViewLocation" Type="String" />
                <asp:Parameter Name="Ransom" Type="String" />
                <asp:Parameter Name="Dob" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="LatestPhoto" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="MPId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

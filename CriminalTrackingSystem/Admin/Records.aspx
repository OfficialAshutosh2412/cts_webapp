<%@ Page Title="CTS | Admin | Records" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Admin_MP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--mp--%>
    <div class="admin-mp">
        <h3><i class="fa-solid fa-person counters"></i> Missing Person Records</h3>
        <asp:GridView ID="GridView1" CssClass="w-100 table table-responsive table-dark" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MPId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="Latest Photo" SortExpression="LatestPhoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LatestPhoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="84px" ImageUrl='<%# Eval("LatestPhoto","../Registration/MissingPerson/{0}") %>' Width="83px" />
                    </ItemTemplate>
                </asp:TemplateField>
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
    <%--mv--%>
    <div class="admin-mv">
        <h3><i class="fa-regular fa-gem counters"></i> Missing Valuable Records</h3>
        <asp:GridView ID="GridView2" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="MVId" DataSourceID="SqlDataSource2" AllowSorting="True">
            <Columns>
                <asp:TemplateField HeaderText="ValuablePurchaseRecipt" SortExpression="ValuablePurchaseRecipt">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ValuablePurchaseRecipt") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="83px" ImageUrl='<%# Eval("ValuablePurchaseRecipt","../Registration/MissingValuableRecipt/{0}") %>' Width="86px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MVId" HeaderText="MVId" InsertVisible="False" ReadOnly="True" SortExpression="MVId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
                <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" SortExpression="PoliceStation" />
                <asp:BoundField DataField="ValuableType" HeaderText="ValuableType" SortExpression="ValuableType" />
                <asp:BoundField DataField="ValuableCost" HeaderText="ValuableCost" SortExpression="ValuableCost" />
                <asp:BoundField DataField="AnySuspect" HeaderText="AnySuspect" SortExpression="AnySuspect" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MissingValuable] WHERE [MVId] = @MVId" InsertCommand="INSERT INTO [MissingValuable] ([LoginUsername], [PoliceStation], [ValuableType], [ValuableCost], [AnySuspect], [ValuablePurchaseRecipt], [Details], [CDT], [Status]) VALUES (@LoginUsername, @PoliceStation, @ValuableType, @ValuableCost, @AnySuspect, @ValuablePurchaseRecipt, @Details, @CDT, @Status)" SelectCommand="SELECT * FROM [MissingValuable]" UpdateCommand="UPDATE [MissingValuable] SET [LoginUsername] = @LoginUsername, [PoliceStation] = @PoliceStation, [ValuableType] = @ValuableType, [ValuableCost] = @ValuableCost, [AnySuspect] = @AnySuspect, [ValuablePurchaseRecipt] = @ValuablePurchaseRecipt, [Details] = @Details, [CDT] = @CDT, [Status] = @Status WHERE [MVId] = @MVId">
            <DeleteParameters>
                <asp:Parameter Name="MVId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="ValuableType" Type="String" />
                <asp:Parameter Name="ValuableCost" Type="String" />
                <asp:Parameter Name="AnySuspect" Type="String" />
                <asp:Parameter Name="ValuablePurchaseRecipt" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="ValuableType" Type="String" />
                <asp:Parameter Name="ValuableCost" Type="String" />
                <asp:Parameter Name="AnySuspect" Type="String" />
                <asp:Parameter Name="ValuablePurchaseRecipt" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="MVId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <%--cc--%>
    <div class="admin-cc">
        <h3 ><i class="fa-solid fa-handcuffs counters"></i> Crime Complains Records</h3>
        <asp:GridView ID="GridView3" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="CCId" DataSourceID="SqlDataSource3" AllowSorting="True">
            <Columns>
                <asp:TemplateField HeaderText="AnyProof" SortExpression="AnyProof">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AnyProof") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="87px" ImageUrl='<%# Eval("AnyProof","../Registration/AnyProof/{0}") %>' Width="83px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CCId" HeaderText="CCId" InsertVisible="False" ReadOnly="True" SortExpression="CCId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
                <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" SortExpression="PoliceStation" />
                <asp:BoundField DataField="CrimeType" HeaderText="CrimeType" SortExpression="CrimeType" />
                <asp:BoundField DataField="InvolvePerson" HeaderText="InvolvePerson" SortExpression="InvolvePerson" />
                <asp:BoundField DataField="CrimeStation" HeaderText="CrimeStation" SortExpression="CrimeStation" />
                <asp:BoundField DataField="CrimeDate" HeaderText="CrimeDate" SortExpression="CrimeDate" />
                <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CrimeComplain] WHERE [CCId] = @CCId" InsertCommand="INSERT INTO [CrimeComplain] ([LoginUsername], [PoliceStation], [CrimeType], [InvolvePerson], [AnyProof], [CrimeStation], [CrimeDate], [CDT], [Status]) VALUES (@LoginUsername, @PoliceStation, @CrimeType, @InvolvePerson, @AnyProof, @CrimeStation, @CrimeDate, @CDT, @Status)" SelectCommand="SELECT * FROM [CrimeComplain]" UpdateCommand="UPDATE [CrimeComplain] SET [LoginUsername] = @LoginUsername, [PoliceStation] = @PoliceStation, [CrimeType] = @CrimeType, [InvolvePerson] = @InvolvePerson, [AnyProof] = @AnyProof, [CrimeStation] = @CrimeStation, [CrimeDate] = @CrimeDate, [CDT] = @CDT, [Status] = @Status WHERE [CCId] = @CCId">
            <DeleteParameters>
                <asp:Parameter Name="CCId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="CrimeType" Type="String" />
                <asp:Parameter Name="InvolvePerson" Type="String" />
                <asp:Parameter Name="AnyProof" Type="String" />
                <asp:Parameter Name="CrimeStation" Type="String" />
                <asp:Parameter Name="CrimeDate" Type="String" />
                <asp:Parameter Name="CDT" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoginUsername" Type="String" />
                <asp:Parameter Name="PoliceStation" Type="String" />
                <asp:Parameter Name="CrimeType" Type="String" />
                <asp:Parameter Name="InvolvePerson" Type="String" />
                <asp:Parameter Name="AnyProof" Type="String" />
                <asp:Parameter Name="CrimeStation" Type="String" />
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
        <asp:GridView ID="GridView4" CssClass="w-100 table table-responsive table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="GCId" DataSourceID="SqlDataSource4" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="GCId" HeaderText="GCId" InsertVisible="False" ReadOnly="True" SortExpression="GCId" />
            <asp:BoundField DataField="LoginUsername" HeaderText="LoginUsername" SortExpression="LoginUsername" />
            <asp:BoundField DataField="PoliceStation" HeaderText="PoliceStation" SortExpression="PoliceStation" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
            <asp:BoundField DataField="InvolvePerson" HeaderText="InvolvePerson" SortExpression="InvolvePerson" />
            <asp:BoundField DataField="CDT" HeaderText="CDT" SortExpression="CDT" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [GeneralComplain] WHERE [GCId] = @GCId" InsertCommand="INSERT INTO [GeneralComplain] ([LoginUsername], [PoliceStation], [Title], [Details], [InvolvePerson], [CDT], [Status]) VALUES (@LoginUsername, @PoliceStation, @Title, @Details, @InvolvePerson, @CDT, @Status)" SelectCommand="SELECT * FROM [GeneralComplain]" UpdateCommand="UPDATE [GeneralComplain] SET [LoginUsername] = @LoginUsername, [PoliceStation] = @PoliceStation, [Title] = @Title, [Details] = @Details, [InvolvePerson] = @InvolvePerson, [CDT] = @CDT, [Status] = @Status WHERE [GCId] = @GCId">
        <DeleteParameters>
            <asp:Parameter Name="GCId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LoginUsername" Type="String" />
            <asp:Parameter Name="PoliceStation" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="InvolvePerson" Type="String" />
            <asp:Parameter Name="CDT" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LoginUsername" Type="String" />
            <asp:Parameter Name="PoliceStation" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="InvolvePerson" Type="String" />
            <asp:Parameter Name="CDT" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="GCId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

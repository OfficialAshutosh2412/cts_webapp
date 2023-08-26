<%@ Page Title="" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CriminalTrackingSystem.Registration.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Profile</h3>
    <div class="profile">
        <asp:GridView ID="GridView1" CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="Username" HeaderText="Your Name" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mstatus" HeaderText="Marriage status" SortExpression="Mstatus" />
                <asp:BoundField DataField="Lstatus" HeaderText="Living status" SortExpression="Lstatus" />
                <asp:BoundField DataField="AdharNumber" HeaderText="Adhaar Number" SortExpression="AdharNumber" />
                <asp:BoundField DataField="ContactNumber" HeaderText="Phone" SortExpression="ContactNumber" />
                <asp:TemplateField HeaderText="Profile Photo" SortExpression="ProfilePhoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProfilePhoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="69px" ImageUrl='<%# Eval("ProfilePhoto", "../RegisterPhoto/{0}") %>' Width="71px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Registration] ([Username], [Password], [Email], [Pincode], [Gender], [Address], [Mstatus], [Lstatus], [AdharNumber], [ContactNumber], [ProfilePhoto]) VALUES (@Username, @Password, @Email, @Pincode, @Gender, @Address, @Mstatus, @Lstatus, @AdharNumber, @ContactNumber, @ProfilePhoto)" SelectCommand="SELECT [Username], [Password], [Email], [Pincode], [Gender], [Address], [Mstatus], [Lstatus], [AdharNumber], [ContactNumber], [ProfilePhoto] FROM [Registration] WHERE ([Username] = @Username)" UpdateCommand="UPDATE [Registration] SET [Username] = @Username, [Password] = @Password, [Pincode] = @Pincode, [Gender] = @Gender, [Address] = @Address, [Mstatus] = @Mstatus, [Lstatus] = @Lstatus, [AdharNumber] = @AdharNumber, [ContactNumber] = @ContactNumber, [ProfilePhoto] = @ProfilePhoto WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Pincode" Type="Decimal" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mstatus" Type="String" />
                <asp:Parameter Name="Lstatus" Type="String" />
                <asp:Parameter Name="AdharNumber" Type="Decimal" />
                <asp:Parameter Name="ContactNumber" Type="Decimal" />
                <asp:Parameter Name="ProfilePhoto" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Pincode" Type="Decimal" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Mstatus" Type="String" />
                <asp:Parameter Name="Lstatus" Type="String" />
                <asp:Parameter Name="AdharNumber" Type="Decimal" />
                <asp:Parameter Name="ContactNumber" Type="Decimal" />
                <asp:Parameter Name="ProfilePhoto" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

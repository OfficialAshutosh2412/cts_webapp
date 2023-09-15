<%@ Page Title="CTS | Admin | Users" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="p-3">
        <h4>find user information using username</h4>
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">--select--</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Username] FROM [Registration]"></asp:SqlDataSource>
    </div>
    <hr />
    <div class="p-3 faq-grid" style="height:auto !important">
        <table class="w-100 table table-dark">
            <tr>
                <td><asp:Label Text="ID" runat="server" /></td>
                <td><asp:Label Text="Username" runat="server" /></td>
                <td><asp:Label Text="Password" runat="server" /></td>
                <td><asp:Label Text="Email" runat="server" /></td>
                <td><asp:Label Text="Pincode" runat="server" /></td>
                <td><asp:Label Text="Gender" runat="server" /></td>
                <td><asp:Label Text="Address" runat="server" /></td>
                <td><asp:Label Text="Marriage Status" runat="server" /></td>
                <td><asp:Label Text="Living Status" runat="server" /></td>
                <td><asp:Label Text="Adhaar Number" runat="server" /></td>
                <td><asp:Label Text="Phone Number" runat="server" /></td>
                <td><asp:Label Text="Profile Picture" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="id" runat="server" /></td>
                <td><asp:Label ID="name" runat="server" /></td>
                <td><asp:Label ID="password" runat="server" /></td>
                <td><asp:Label ID="email" runat="server" /></td>
                <td><asp:Label ID="pin" runat="server" /></td>
                <td><asp:Label ID="sex" runat="server" /></td>
                <td><asp:Label ID="address" runat="server" /></td>
                <td><asp:Label ID="ms" runat="server" /></td>
                <td><asp:Label ID="ls" runat="server" /></td>
                <td><asp:Label ID="adhaar" runat="server" /></td>
                <td><asp:Label ID="phone" runat="server" /></td>
                <td><asp:Image ID="pics" style="width:100px; height:100px; object-fit:cover" runat="server" /></td>
            </tr>
        </table>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="faq-grid">
        <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="RegId" HeaderText="RegId" InsertVisible="False" ReadOnly="True" SortExpression="RegId" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Mstatus" HeaderText="Mstatus" SortExpression="Mstatus" />
                <asp:BoundField DataField="Lstatus" HeaderText="Lstatus" SortExpression="Lstatus" />
                <asp:BoundField DataField="AdharNumber" HeaderText="AdharNumber" SortExpression="AdharNumber" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:TemplateField HeaderText="ProfilePhoto" SortExpression="ProfilePhoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProfilePhoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="92px" ImageUrl='<%# Eval("ProfilePhoto","/RegisterPhoto/{0}") %>' Width="90px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>

    </div>
    
</asp:Content>

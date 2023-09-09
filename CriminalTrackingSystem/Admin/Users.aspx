<%@ Page Title="CTS | Admin | Users" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-3">
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Username" DataValueField="Username" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">--select--</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Username] FROM [Registration]"></asp:SqlDataSource>
    </div>
    <div class="p-3">
        <div><asp:Label Text="ID" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="id" runat="server" /></div>
        <div><asp:Label Text="Username" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="name" runat="server" /></div>
        <div><asp:Label Text="Password" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="password" runat="server" /></div>
        <div><asp:Label Text="Email" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="email" runat="server" /></div>
        <div><asp:Label Text="Pincode" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="pin" runat="server" /></div>
        <div><asp:Label Text="Gender" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="sex" runat="server" /></div>
        <div><asp:Label Text="Address" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="address" runat="server" /></div>
        <div><asp:Label Text="Marriage Status" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="ms" runat="server" /></div>
        <div><asp:Label Text="Living Status" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="ls" runat="server" /></div>
        <div><asp:Label Text="Adhaar Number" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="adhaar" runat="server" /></div>
        <div><asp:Label Text="Phone Number" runat="server" /><asp:Label Text=":" runat="server" /><asp:Label ID="phone" runat="server" /></div>
        <%--<div><asp:Label Text="Profile Picture" runat="server" /><asp:Label Text=":" runat="server" /><asp:Image ID="pics" runat="server" />--%>
    </div>
</asp:Content>

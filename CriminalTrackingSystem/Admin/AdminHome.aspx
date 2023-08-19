<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="CriminalTrackingSystem.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="p-3 container-fluid">
       <h1>Welcome, <asp:Label  runat="server" ID="adminName" CssClass="text-light fs-1"/></h1>
       
   </div>
</asp:Content>

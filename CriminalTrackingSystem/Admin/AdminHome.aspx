﻿<%@ Page Title="CTS | Dashboard" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="CriminalTrackingSystem.Admin.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="session-name">
        <h6><i class="fa-solid fa-hands-praying fs-4"></i>Namaste,
            <asp:Label runat="server" ID="adminName" CssClass="text-light " /></h6>
    </div>
    <%--first row--%>
    <div class="admin-card-container">
        <%--user--%>
        <div class="admin-card">
            <i class="fa-solid fa-user-large counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="usercount" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>User Accounts</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="userCountLink"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--crime complain--%>
        <div class="admin-card">
            <i class="fa-solid fa-handcuffs counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="cc" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Crime Complains</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="HyperLink1"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--general complain--%>
        <div class="admin-card">
            <i class="fa-solid fa-file-signature counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="gc" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>General Complains</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="HyperLink2"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--missing person--%>
        <div class="admin-card">
            <i class="fa-solid fa-person counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="mp" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Missing Person Cases</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="HyperLink3"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%--missing valuable--%>
        <div class="admin-card">
           <i class="fa-regular fa-gem counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="mv" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Missing Valuable Cases</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="HyperLink4"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
    </div>
    <%--second row--%>
    <div class="admin-card-container">
        <%-- contact us--%>
        <div class="admin-card">
           <i class="fa-solid fa-message counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="contact" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>Contact Requests</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/AdminHome.aspx" CssClass="counterbtn" runat="server" ID="HyperLink5"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
        <%-- FAQ--%>
        <div class="admin-card">
           <i class="fa-solid fa-circle-question counters"></i>
            <div>
                <asp:Label Text="" runat="server" ID="faq" class="counters" />
                <asp:Label Text="+" runat="server" class="counters" />
            </div>
            <div class="d-flex justify-content-center align-items-center">
                <p>End-User Queries</p>
            </div>
            <asp:HyperLink NavigateUrl="~/Admin/Admin-FAQ.aspx" CssClass="counterbtn" runat="server" ID="HyperLink6"><i class="fa-solid fa-angle-right"></i></asp:HyperLink>
        </div>
    </div>
</asp:Content>

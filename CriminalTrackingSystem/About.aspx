<%@ Page Title="CTS | About Us" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CriminalTrackingSystem.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <%--introduction--%>
        <div class="hero">
            <img src="dist/img/cts_logo.png" />
            <div>
                <h1 class=" text-capitalize">Know about us...</h1>
                <p class="text-left">
                    CTS stands for <strong>" CRIMINAL TRACKING SYSTEM"</strong>,
                    which is a online crime reporting platform. Anyone can report us any crime 
                    anytime from anywhere.
                </p>
                <div class="joinus"><a class="cc-btn bg-danger text-white p-2" href="Signup.aspx">Join us</a></div>
            </div>
        </div>
        <div class="team">
            <h1 class="menu-heads">Our<span> Services</span></h1>
        </div>
    </div>
</asp:Content>

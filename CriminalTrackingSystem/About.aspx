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
        <div class="card-info">
            <div class="card-info-sections">
                <div class="card-item">
                    <h1>What's CTS ?</h1>
                    <p>Crime and Criminal Tracking Network & Systems (CCTNS) is a plan scheme conceived in the light of experience of a non-plan scheme namely.</p>
                </div>
                <div class="card-item">
                    <h1>CTS Vissions</h1>
                    <p>Make the Police functioning citizen friendly and more transparent by automating the functioning of Police Stations.</p>
                </div>
                <div class="card-item">
                    <h1>Stakeholder</h1>
                    <p>Citizens/ Citizens groups, MHA/NCRB, State Police department, External Departments of the State such as Courts, and Peoples.</p>
                </div>
                <div class="card-item">
                    <h1>Benefits</h1>
                    <p>Enhanced tools for investigation, Centralized crime and criminal information repository along with the criminal images.<p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

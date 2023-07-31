<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w-75 m-auto bg-dark">
        <%--ad rotater--%>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="2000">
            </asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="w-100" style="height: 40vh">
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Rotater.xml" CssClass="w-100 h-100 object-fit-fill" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <%--news marquee--%>
        <div class="bg-danger text-white p-2">
            <marquee onmouseover="this.stop()" onmouseout="this.start()" behavior="alternate" direction="left" scrollamount="10">
                <strong>1 - This site is under development.  </strong>
                <strong>2 - Soon. this site will fully avaialable to support you.  </strong>
                <strong>3 - User now upload their profile picture.  </strong>
                <strong>4 - In Bootstrap V5.3 alpha jquery is removed.  </strong>
                <strong>5 - A new .NET CORE framework launched to integrate ASP with MVC together.</strong>
            </marquee>
        </div>
        <%--intro cards--%>
        <div class="w-75 p-4" style="margin: 0 auto;">
            <div class="row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">What are we aim for?</h5>
                            <p class="card-text">The main objective of this system is to manage criminal details in a centralized database and provide solution to people to file complaint through online.</p>
                            <a href="About.aspx" class="btn btn-danger">know more</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">What exactly is CTS?</h5>
                            <p class="card-text">CTS stands for Criminal Tracking System, which is a online crime reporting portal. It is specialized to handle the reports and crime data. </p>
                            <a href="About.aspx" class="btn btn-danger">know more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--gallery section--%>
        
    </div>
</asp:Content>

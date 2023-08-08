<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--video--%>
    <div class="head-container">
        <div>
            <video autoplay loop muted>
                <source src="dist/img/videoplayback.webm" />
            </video>
        </div>
    </div>
    <%--intro--%>
    <div class="intro-section">
        <div>
            <img src="dist/img/cts_logo.png" />
        </div>
        <div>
            <h1>Criminal Tracking System</h1>
            <p>NCRB started CCIS in the year 1995, wherein State police headquarters and district headquarters were covered under this project. CCIS was primarily an initiative to create crime- and criminals-related database that can be used for crime monitoring by monitoring agencies such as National Crime Records Bureau (NCRB), State Crime Records Bureaus (SCRBx) and District Crime Records Bureaus (DCRBx) and to facilitate statistical analysis of crime and criminals related information with the States and monitoring agencies. </p>
            <asp:HyperLink ID="HyperLink1" CssClass="cc-btn" runat="server" NavigateUrl="~/About.aspx">know more</asp:HyperLink>
        </div>
    </div>
    <%--services 1--%>
    <div class="service-container">
        <h1 class="menu-heads">Missing<span> Report</span></h1>
        <div class="services">
            <%--first--%>
            <div class="services-item">
                <div>
                    <p>Missing Person Report</p>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cc-btn" NavigateUrl="~/Login.aspx">visit</asp:HyperLink>
                </div>
                <div class="hide">
                    <img src="dist/img/mr.jpg" />
                </div>
            </div>
            <%--second--%>
            <div class="services-item">
                <div>
                    <p>Missing Valuable Report</p>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cc-btn" NavigateUrl="~/Login.aspx">visit</asp:HyperLink>
                </div>
                <div class="hide">
                    <img src="dist/img/mv.jpg" />
                </div>
            </div>
        </div>
    </div>
    <%--services 2--%>
    <div class="service-container">
        <h1 class="menu-heads">File<span> Complain</span></h1>
        <div class="services">
            <%--third--%>
            <div class="services-item">
                <div>
                    <p>Crime Complain</p>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="cc-btn" NavigateUrl="~/Login.aspx">visit</asp:HyperLink>
                </div>
                <div class="hide">
                    <img src="dist/img/cc.jpg" />
                </div>
            </div>
            <%--second--%>
            <div class="services-item">
                <div>
                    <p>General Complain</p>
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="cc-btn" NavigateUrl="~/Login.aspx">visit</asp:HyperLink>
                </div>
                <div class="hide">
                    <img src="dist/img/gc.jpg" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

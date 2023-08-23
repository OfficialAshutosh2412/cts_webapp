<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--login--%>
    <div class="signin bg-white p-5 shadow-lg rounded show-login">
        <h1>Login</h1>
        <div class="mb-3">
            <label class="form-label">
                Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginName" ErrorMessage="*fill username " ForeColor="#FF5050">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="LoginName" runat="server" class="cc-box"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">
                Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LoginPassword" ErrorMessage="*password is required  to login " ForeColor="#FF5050">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" class="cc-box"></asp:TextBox>
        </div>
        <div class="d-flex justify-content-start align-items-center">
            <asp:Button ID="Button1" runat="server" Text="login now !" class="send p-2" OnClick="Button1_Click" /><br />
            <label class="delete p-2" id="login-close">close</label>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-secondary" NavigateUrl="~/Signup.aspx">click here to create account...</asp:HyperLink>
        <asp:ValidationSummary ID="ValidationSummary1" CssClass="d-none" runat="server" ShowMessageBox="True" />
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label>
        </div>
    </div>
    <%--hero--%>
    <div class="hero">
        <div class="left"><img src="dist/img/cts_logo.png" /></div>
        <div class="right">
            <h1><span>Crime</span> Tracking System</h1>
            <p>CTS is an online portal to track crime records.</p>
            <small>Managed by State Police Department</small>
            <label class="cc-btn">join us</label>
        </div>
    </div>
    <%--about--%>
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
                <p>
                    Enhanced tools for investigation, Centralized crime and criminal information repository along with the criminal images.<p>
            </div>
        </div>
    </div>



    <%--news--%>
        <%--<div class="news">
            <div class="bg-danger text-white p-2 ticker">NEWS</div>
            <div class="two">
                <a href="/Login.aspx">Site is under development.</a>
                <a href="/Login.aspx">If you see crime happens anywhere, report to our website.</a>
                <a href="/Login.aspx">User no enabled to upload their profile.</a>
                <a href="/Login.aspx">Profile edit option will be appear soon</a>
            </div>
        </div>--%>

    <%--services--%>
    <div class="service-container">
        <h1 class="menu-heads">Our<span> Services</span></h1>
        <div class="services">
            <%--first--%>
            <div class="services-item">
                <div>
                    <p>Missing Person Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/mr.jpg" />
                </div>
            </div>
            <%--second--%>
            <div class="services-item">
                <div>
                    <p>Missing Valuable Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/mv.jpg" />
                </div>
            </div>
            <%--third--%>
            <div class="services-item">
                <div>
                    <p>Crime Complain</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/cc.jpg" />
                </div>
            </div>
            <%--fourth--%>
            <div class="services-item">
                <div>
                    <p>Missing Person Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/gc.jpg" />
                </div>
            </div>
        </div>
    </div>



</asp:Content>

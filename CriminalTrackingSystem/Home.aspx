<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--slider--%>
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel" >
        <div class="carousel-inner slider-section">
            <div class="carousel-item active slider-img-container" data-bs-interval="3000">
                <img src="dist/img/AD1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item slider-img-container" data-bs-interval="3000">
                <img src="dist/img/AD3...jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item slider-img-container" data-bs-interval="3000">
                <img src="dist/img/AD4.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item slider-img-container" data-bs-interval="3000">
                <img src="dist/img/AD5.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item slider-img-container" data-bs-interval="3000">
                <img src="dist/img/AD6.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

        <%--news--%>
        <div class="news">
            <div class="bg-danger text-white p-2 ticker">NEWS</div>
            <div class="two">
                <a href="/Login.aspx">Site is under development.</a>
                <a href="/Login.aspx">If you see crime happens anywhere, report to our website.</a>
                <a href="/Login.aspx">User no enabled to upload their profile.</a>
                <a href="/Login.aspx">Profile edit option will be appear soon</a>
            </div>
        </div>

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

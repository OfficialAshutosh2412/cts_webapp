<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <%--slider--%>
        <div class="slide-container">
            <div id="carouselExampleRide" class="carousel slide" data-bs-ride="ride">
                <div class="carousel-inner">
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/1.jpeg" class="" />
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/2.jpg" "/>
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/3.jpg" />
                    </div>

                    <div class="carousel-item active" data-bs-interval="1000">
                        <img src="adPhotos/4.jpg" />
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/5.jpg"/>
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/6.jpg"/>
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/7.jpg"/>
                    </div>
                    <div class="carousel-item" data-bs-interval="1000">
                        <img src="adPhotos/8.jpg"/>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</asp:Content>

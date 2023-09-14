<%@ Page Title="CTS | Profile" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CriminalTrackingSystem.Registration.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile">
        <div class="profile-box">
            <asp:HyperLink NavigateUrl="~/Registration/EditProfile.aspx" CssClass="text-black" title="edit profile data" runat="server"><i class="fa-solid fa-pen-to-square"></i></asp:HyperLink>
            <div class="profile-img">
                <asp:Image ID="Image1" runat="server" />
            </div>
            <div class="profile-name">
                <asp:Label ID="name" runat="server" />
            </div>
            <div class="profile-data">
                <div>
                    <p><i class="fa-solid fa-id-card-clip"></i>
                    <asp:Label Text="Your Portal ID" runat="server" /></p>
                    <asp:Label ID="id" runat="server" />
                </div>
                
                <div>
                    <p>
                        <i class="fa-solid fa-hashtag"></i>
                    <asp:Label Text="Your Pincode" runat="server" />
                    </p>
                    <asp:Label ID="pin" runat="server" />
                </div>
                <div>
                    <p><i class="fa-solid fa-venus-mars"></i>
                    <asp:Label Text="Your Gender" runat="server" /></p>
                    <asp:Label ID="sex" runat="server" />
                </div>
                
                <div>
                    <p><i class="fa-solid fa-heart"></i>
                    <asp:Label Text="Marital Status" runat="server" /></p>
                    <asp:Label ID="ms" runat="server" />
                </div>
                <div>
                    <p><i class="fa-solid fa-building-wheat"></i>
                    <asp:Label Text="Living Status" runat="server" /></p>
                    <asp:Label ID="ls" runat="server" />
                </div>
                <div>
                    <p><i class="fa-solid fa-id-card"></i> 
                    <asp:Label Text="Your Adhaar Number" runat="server" /></p>
                    <asp:Label ID="adhaar" runat="server" />
                </div>
                
            </div>
            <div class="profile-foot">
                <div>
                    <i class="fa-solid fa-envelope"></i>
                    <asp:Label ID="email" runat="server" />
                </div>
                <div>
                    <i class="fa-solid fa-location-dot"></i>
                    <asp:Label ID="address" runat="server" />
                </div>
                <div>
                    <i class="fa-solid fa-phone"></i>
                    <asp:Label ID="phone" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

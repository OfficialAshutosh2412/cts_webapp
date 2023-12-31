﻿<%@ Page Title="CTS | Singup" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CriminalTrackingSystem.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup shadow-lg p-5 bg-white round">
        <h1 class="p-2 ">Signup</h1>
        <%--first row--%>
        <div class="deflex">
            <div class="w-100 p-2">
                <i class="fa-solid fa-user"></i><label class="form-label fw-bolder">
                    Username<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="SignupName" ErrorMessage="username empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                </label>
                <asp:TextBox ID="SignupName" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-key"></i><label class="form-label fw-bolder">
                    Password<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="SignupPwsd" ErrorMessage="password empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                </label>
                <asp:TextBox ID="SignupPwsd" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-key"></i><label class="form-label fw-bolder">
                    Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SignupCrmfPwsd" ErrorMessage="confirm password empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SignupPwsd" ControlToValidate="SignupCrmfPwsd" ErrorMessage="password doesn't match" ForeColor="#FF5050" Font-Size="Small" Font-Bold="True">*</asp:CompareValidator>
                </label>
                <asp:TextBox ID="SignupCrmfPwsd" runat="server" class="cc-box"></asp:TextBox>
            </div>
        </div>
        <%--second row--%>
        <div class="deflex">
            <div class="w-100 p-2">
                <i class="fa-solid fa-envelope"></i><label class="form-label fw-bolder">
                    Email<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SignupEmail" ErrorMessage="email empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SignupEmail" ErrorMessage="invalid email" Font-Size="Small" ForeColor="#FF5050" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox ID="SignupEmail" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-hashtag"></i><label class="form-label fw-bolder">
                    Pincode<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="SignupPin" ErrorMessage="pincode empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SignupPin" ErrorMessage="invlid pincode" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox ID="SignupPin" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-venus-mars"></i><label class="form-label fw-bolder">Gender</label>
                <asp:DropDownList ID="SignupGender" runat="server" class="cc-box">
                    <asp:ListItem Selected="True">--select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <%--third row--%>
        <div class="w-100 p-2">
            <i class="fa-solid fa-location-dot"></i><label class="form-label fw-bolder">
                Address<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="SignupAddress" ErrorMessage="address empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="SignupAddress" runat="server" class="cc-box"></asp:TextBox>
        </div>
        <%--fourth row--%>
        <div class="deflex">
            <div class="w-100 p-2">
                <i class="fa-solid fa-heart"></i><label class="form-label fw-bolder">Marital Status</label>
                <asp:DropDownList ID="SignupMS" runat="server" class="cc-box">
                    <asp:ListItem Selected="True">--select--</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                    <asp:ListItem>Widow</asp:ListItem>
                    <asp:ListItem>Widower</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-building-wheat"></i><label class="form-label fw-bolder">Living Status</label>
                <asp:DropDownList ID="SignupLS" runat="server" class="cc-box">
                    <asp:ListItem Selected="True">--select--</asp:ListItem>
                    <asp:ListItem>High Class</asp:ListItem>
                    <asp:ListItem>Middle Class</asp:ListItem>
                    <asp:ListItem>Lower Class</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-id-card"></i> <label class="form-label fw-bolder">
                    Adhaar Number<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="SignupAdhaar" ErrorMessage="adhaar number empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SignupAdhaar" ErrorMessage="incorrect adhaar number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{12}">*</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox ID="SignupAdhaar" runat="server" class="cc-box"></asp:TextBox>
            </div>
        </div>
        <%--fifth row--%>
        <div class="deflex">
            <div class="w-100 p-2">
                <i class="fa-solid fa-phone"></i><label class="form-label fw-bolder">
                    Contact Number<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="SignupContact" ErrorMessage="contact  number empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SignupContact" ErrorMessage="incorrect phone number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                </label>
                <asp:TextBox ID="SignupContact" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <div class="w-100 p-2">
                <i class="fa-solid fa-image"></i><label class="form-label fw-bolder">Profile</label>
                <asp:FileUpload ID="SignupProfile" runat="server" class="cc-box" />
            </div>
        </div>
        <%--sixth row--%>
        <div class="deflex">
            <div class="w-100 p-2">
                <i class="fa-brands fa-dev"></i><label class="form-label fw-bolder">Enter Token Number</label>
                <asp:TextBox ID="tokenNo" runat="server" CssClass="cc-box" placeholder="only for admin, other user leave it, if other user type any thing it does not matters" OnTextChanged="tokenNo_TextChanged" AutoPostBack="True"></asp:TextBox>
            </div>
        </div>
        <%--buttons row--%>
        <asp:Button ID="Button1" runat="server" Text="Signup " class="send" OnClick="Button1_Click" />
        <asp:Button ID="AdminButton" runat="server" Text="Signup as admin !" class="clear" Visible="False" OnClick="AdminButton_Click" />
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-secondary " NavigateUrl="~/Login.aspx">click here to login...</asp:HyperLink>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="text-danger d-none" ShowMessageBox="True" />
        </div>
    </div>
</asp:Content>

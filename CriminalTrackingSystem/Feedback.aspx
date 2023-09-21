<%@ Page Title="CTS | Feedback" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="CriminalTrackingSystem.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--login--%>
    <div class="signin bg-white p-5 rounded">
        <i class="fa-solid fa-hand-holding-heart" style="font-size:3rem;text-align:center;color:#3fc387;width:100%"></i>
        <h3 class="text-center">Thank you for your words...</h3>
        <div class="mb-3">
            <i class="fa-solid fa-user"></i><label class="form-label fw-bolder">Your Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name required !" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="name" runat="server" class="cc-box" style="background:#f6f6f6"></asp:TextBox>
        </div>
        <div class="mb-3">
            <i class="fa-solid fa-envelope"></i><label class="form-label fw-bolder">Your Email<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mails" ErrorMessage="Email required !" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="mails" runat="server" class="cc-box" style="background:#f6f6f6"></asp:TextBox>
        </div>
        <div class="mb-3">
            <i class="fa-solid fa-pen-fancy"></i><label class="form-label fw-bolder">Your words<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="words" ErrorMessage="Your word are play important role for us, so write something for us !" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </label>
            <asp:TextBox ID="words" runat="server" TextMode="MultiLine" Rows="4" class="cc-box" style="background:#f6f6f6" ></asp:TextBox>
        </div>
        <div class="d-flex justify-content-start align-items-center">
            <asp:Button ID="send" runat="server" Text="submit my thoughts !" CssClass="send p-2" OnClick="Send_Click"/>
            <asp:ValidationSummary CssClass="d-none" ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowModelStateErrors="False" />
        </div>
    </div>
</asp:Content>

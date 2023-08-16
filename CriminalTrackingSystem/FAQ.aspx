<%@ Page Title="CTS | FAQ" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="CriminalTrackingSystem.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="faq-container">
        <img src="dist/img/FAQs(1).gif" />
            <h1>Ask Questions<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="field should not empty!" ForeColor="#FF5050" ControlToValidate="question">*</asp:RequiredFieldValidator>
        </h1>
            <asp:ValidationSummary CssClass="d-none" ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
            <div class="faq-form">
                <asp:TextBox ID="question" runat="server" CssClass="cc-box"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Send" cssClass="delete" OnClick="Button1_Click"/>
            </div>
    </div>
    <div class="mt-3">
        <h3>Frequently Asked Questions...</h3>
        <div class="faq-grid">
        </div>
    </div>  
   
</asp:Content>

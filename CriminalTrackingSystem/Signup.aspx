<%@ Page Title="CTS | Singup" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CriminalTrackingSystem.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="p-5 bg-dark text-light shadow-lg">Signup</h1>
    </div>
    
        <div class="signup shadow-lg p-5  bg-white round">
            <%--first row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Username<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="SignupName" ErrorMessage="username empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="SignupName" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="SignupPwsd" ErrorMessage="password empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="SignupPwsd" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SignupCrmfPwsd" ErrorMessage="confirm password empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SignupPwsd" ControlToValidate="SignupCrmfPwsd" ErrorMessage="password doesn't match" ForeColor="#FF5050" Font-Size="Small" Font-Bold="True">*</asp:CompareValidator>
                    </label>
                 <asp:TextBox ID="SignupCrmfPwsd" runat="server" class="cc-box"></asp:TextBox>
                </div>
            </div>
            <%--second row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SignupEmail" ErrorMessage="email empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SignupEmail" ErrorMessage="invalid email" Font-Size="Small" ForeColor="#FF5050" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </label>&nbsp;<asp:TextBox ID="SignupEmail" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Pincode<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="SignupPin" ErrorMessage="pincode empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SignupPin" ErrorMessage="invlid pincode" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
                    </label>
                    <asp:TextBox ID="SignupPin" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Gender</label>
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
                <label class="form-label">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="SignupAddress" ErrorMessage="address empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="SignupAddress" runat="server" class="cc-box"></asp:TextBox>
            </div>
            <%--fourth row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Marital Status</label>
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
                    <label class="form-label">Living Status</label>
                    <asp:DropDownList ID="SignupLS" runat="server" class="cc-box">
                        <asp:ListItem Selected="True">--select--</asp:ListItem>
                        <asp:ListItem>High Class</asp:ListItem>
                        <asp:ListItem>Middle Class</asp:ListItem>
                        <asp:ListItem>Lower Class</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Adhaar Number<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="SignupAdhaar" ErrorMessage="adhaar number empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SignupAdhaar" ErrorMessage="incorrect adhaar number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{12}">*</asp:RegularExpressionValidator>
                    </label>
                   <asp:TextBox ID="SignupAdhaar" runat="server" class="cc-box"></asp:TextBox>
                </div>
            </div>
            <%--fifth row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Contact Number<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="SignupContact" ErrorMessage="contact  number empty !" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SignupContact" ErrorMessage="incorrect phone number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                    </label>
                 <asp:TextBox ID="SignupContact" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Profile</label>
                    <asp:FileUpload ID="SignupProfile" runat="server" class="cc-box" />
                </div>
            </div>
            <%--buttons--%>
            <asp:Button ID="Button1" runat="server" Text="Signup now !"  class="cc-btn" OnClick="Button1_Click"/>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-secondary " NavigateUrl="~/Login.aspx">click here to login...</asp:HyperLink>
            <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
            <div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="text-danger d-none" ShowMessageBox="True"/>
        </div>
        </div>
</asp:Content>

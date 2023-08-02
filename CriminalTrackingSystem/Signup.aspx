<%@ Page Title="CTS | Singup" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CriminalTrackingSystem.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-body-secondary pad-5 min-width">
        <div class="signup shadow-lg p-5  bg-white round">
            <h1>Signup</h1>
            <%--first row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Username</label>
                    <asp:TextBox ID="SignupName" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SignupName" ErrorMessage="username required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Password</label>
                    <asp:TextBox ID="SignupPwsd" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SignupPwsd" ErrorMessage="create password" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Confirm Password</label>
                    <asp:TextBox ID="SignupCrmfPwsd" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SignupPwsd" ControlToValidate="SignupCrmfPwsd" ErrorMessage="password doesn't match" ForeColor="#FF5050" Font-Size="Small" Font-Bold="True"></asp:CompareValidator>
                </div>
            </div>
            <%--second row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Email</label>
                    <asp:TextBox ID="SignupEmail" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SignupEmail" ErrorMessage="invalid email" Font-Size="Small" ForeColor="#FF5050" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Pincode</label>
                    <asp:TextBox ID="SignupPin" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SignupPin" ErrorMessage="invlid pincode" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Gender</label>
                    <asp:DropDownList ID="SignupGender" runat="server" class="form-control border-2 border-success">
                        <asp:ListItem Selected="True">--select--</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Transgender</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SignupGender" ErrorMessage="gender required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--third row--%>
            <div class="w-100 p-2">
                <label class="form-label">Address</label>
                <asp:TextBox ID="SignupAddress" runat="server" class="form-control border-2 border-success"></asp:TextBox>
            </div>
            <%--fourth row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Marital Status</label>
                    <asp:DropDownList ID="SignupMS" runat="server" class="form-control border-2 border-success">
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
                    <asp:DropDownList ID="SignupLS" runat="server" class="form-control border-2 border-success">
                        <asp:ListItem Selected="True">--select--</asp:ListItem>
                        <asp:ListItem>High Class</asp:ListItem>
                        <asp:ListItem>Middle Class</asp:ListItem>
                        <asp:ListItem>Lower Class</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Adhaar Number</label>
                    <asp:TextBox ID="SignupAdhaar" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SignupAdhaar" ErrorMessage="incorrect adhaar number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{12}"></asp:RegularExpressionValidator>
                </div>
            </div>
            <%--fifth row--%>
            <div class="deflex">
                <div class="w-100 p-2">
                    <label class="form-label">Contact Number</label>
                    <asp:TextBox ID="SignupContact" runat="server" class="form-control border-2 border-success"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SignupContact" ErrorMessage="incorrect phone number" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </div>
                <div class="w-100 p-2">
                    <label class="form-label">Profile</label>
                    <asp:FileUpload ID="SignupProfile" runat="server" class="form-control border-2 border-success" />
                </div>
            </div>
            <%--buttons--%>
            <asp:Button ID="Button1" runat="server" Text="Signup"  class="btn m-2 btn-success" OnClick="Button1_Click"/>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="link-success " NavigateUrl="~/Login.aspx">click here to login...</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
        </div>
    </div>
</asp:Content>

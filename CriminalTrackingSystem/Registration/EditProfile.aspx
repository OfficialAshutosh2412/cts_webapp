<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="CriminalTrackingSystem.Registration.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CTS | Edit Profile</title>
    <link rel="icon" href="../dist/favicon/cts_logo.ico" type="image/x-icon" />
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../dist/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body style="background:#fafafa">
    <form id="form1" runat="server">
        <div class="profile-edit">
            <div class="edit-box">
                <div class="edit-item">
                    <div>
                        <i class="fa-solid fa-hashtag"></i><asp:Label Text="Pincode" runat="server" CssClass="fw-bolder" />
                        <asp:TextBox runat="server" ID="pin" class="cc-box" />
                    </div>
                    <div>
                        <i class="fa-solid fa-venus-mars"></i><asp:Label Text="Gender" runat="server" CssClass="fw-bolder" />
                        <asp:DropDownList ID="gender" runat="server" class="cc-box">
                            <asp:ListItem Selected="True">select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Transgender</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="edit-item">
                    <div>
                        <i class="fa-solid fa-heart"></i><asp:Label Text="Marital Status" runat="server" CssClass="fw-bolder" />
                        <asp:DropDownList runat="server" ID="ms" class="cc-box">
                            <asp:ListItem Selected="True">select</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Unmarried</asp:ListItem>
                            <asp:ListItem>Widow</asp:ListItem>
                            <asp:ListItem>Widower</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>In a relationship</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <i class="fa-solid fa-building-wheat"></i><asp:Label Text="Living Status" runat="server" CssClass="fw-bolder" />
                        <asp:DropDownList runat="server" ID="ls" class="cc-box">
                            <asp:ListItem Selected="True">select</asp:ListItem>
                            <asp:ListItem>Low Class</asp:ListItem>
                            <asp:ListItem>Middle Class</asp:ListItem>
                            <asp:ListItem>High Class</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <i class="fa-solid fa-id-card"></i> <asp:Label Text="Adhaar Number" runat="server" CssClass="fw-bolder" />
                        <asp:TextBox runat="server" TextMode="Number" ID="adhaar" class="cc-box" />
                    </div>
                </div>
                <div class="edit-item">
                    <div>
                        <i class="fa-solid fa-envelope"></i><asp:Label Text="Email" runat="server" CssClass="fw-bolder" />
                        <asp:TextBox runat="server" ID="email" TextMode="Email" class="cc-box" />
                    </div>
                    <div>
                        <i class="fa-solid fa-location-dot"></i><asp:Label Text="Address" runat="server" CssClass="fw-bolder" />
                        <asp:TextBox runat="server" ID="address" class="cc-box" />
                    </div>
                    <div>
                        <i class="fa-solid fa-phone"></i><asp:Label Text="Phone" runat="server" CssClass="fw-bolder" />
                        <asp:TextBox runat="server" ID="phone" class="cc-box" />
                    </div>
                </div>
                <div class="edit-item">
                    <div>
                        <i class="fa-solid fa-image"></i><asp:Label Text="Profile Picture" runat="server" CssClass="fw-bolder" />
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="cc-box" />
                    </div>
                </div>
                <div>
                    <asp:Button Text="Update" CssClass="cc-btn" runat="server" OnClick="Unnamed9_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>

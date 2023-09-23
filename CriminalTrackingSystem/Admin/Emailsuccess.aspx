<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emailsuccess.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Eamilsuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../dist/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center align-items-lg-center vh-100 text-center">
            <div class="fs-1">
                <asp:Label Text="Email Sent" runat="server" />
                <br />
                <div class="tenor-gif-embed" data-postid="26242906" data-share-method="host" data-aspect-ratio="1" data-width="100%"><a href="https://tenor.com/view/very-nice-gif-26242906">Very Nice Sticker</a>from <a href="https://tenor.com/search/very+nice-stickers">Very Nice Stickers</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>
                <asp:HyperLink NavigateUrl="~/Admin/AdminContact.aspx" runat="server" CssClass="delete p-2 fs-3">back</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>

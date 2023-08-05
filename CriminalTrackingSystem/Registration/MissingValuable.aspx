<%@ Page Title="CTS | Missing Valuable Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="MissingValuable.aspx.cs" Inherits="CriminalTrackingSystem.Registration.MissingValuable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" CssClass="p-3 bg-danger text-white"></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <%--form--%>
    <div class="cc-container min-width">
        <div class="cc-semi-container ">
            <h2 class="p-3"><img src="../dist/img/diamond_2600353.png"  style="width:60px;"/>Missing Valuable Report</h2>
            <%--first row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Username</label>
                    <asp:TextBox ID="MVUserName"  runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div>
                    <label>Police Station</label>
                    <asp:TextBox ID="MVPoliceStation" runat="server"  class="cc-box" placeholder="police station name"></asp:TextBox>
                </div>
                <div>
                    <label>Valuable Type</label>
                    <asp:DropDownList ID="MVType" runat="server" class="cc-box">
                        <asp:ListItem Selected="True">--select--</asp:ListItem>
                        <asp:ListItem>FIne Art</asp:ListItem>
                        <asp:ListItem>Rare Coins</asp:ListItem>
                        <asp:ListItem>Jewelry and Gems</asp:ListItem>
                        <asp:ListItem>Stamps</asp:ListItem>
                        <asp:ListItem>Classic and Exotic Cars</asp:ListItem>
                        <asp:ListItem>Fine Wines</asp:ListItem>
                        <asp:ListItem>Chinese Porcelain</asp:ListItem>
                        <asp:ListItem>Timepieces/Watches</asp:ListItem>
                        <asp:ListItem>Exotic Bikes</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    
                </div>
            </div>
            <%--second row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Valuable Cost</label>
                    <asp:TextBox ID="MVCost" runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div>
                    <label>Any suspect</label>
                    <asp:TextBox ID="MVSuspect" runat="server" class="cc-box" ></asp:TextBox>
                </div>
                <div>
                    <label>Valuable or valuable Receipt Photo</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" class="cc-box"/>
                </div>
            </div>
            <%--third row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Valuable Details</label>
                    <asp:TextBox ID="MVDetails" runat="server"  class="cc-box"  placeholder="write few identification of valuables..."></asp:TextBox>
                    <br />
                </div>
            </div>
            <%--fourth row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Current Date & Time</label>
                    <asp:TextBox ID="MVCurrentDate" runat="server"  class="cc-box"  placeholder="enter current date and time"></asp:TextBox>
                    <br />
                </div>
                <div>
                    <label>Status</label>
                    <asp:TextBox ID="MVStatus" runat="server"  class="cc-box" placeholder="write 0, if crime solved, 1 if not solved..."></asp:TextBox>
                    <br />
                </div>
            </div>
            <%--fifth row--%>
            <div class="cc-flexbox">
                <asp:Button ID="Button1" runat="server" Text="send report !"  class="cc-btn" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="clear fields !" class="cc-btn" OnClick="Button2_Click"/>
            </div>
        </div>
    </div>  
</asp:Content>

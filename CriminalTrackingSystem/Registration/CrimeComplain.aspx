<%@ Page Title="CTS | Crime Complain Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="CrimeComplain.aspx.cs" Inherits="CriminalTrackingSystem.Registration.CrimeComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--date time renderer--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="mt-3">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Class=" p-2  text-white bg-danger" ></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
    </asp:Timer>
    
    <br />
    <div class="cc-container min-width">
        <div class="cc-semi-container ">
            <h2><img src="../dist/img/trial.png" />Crime Complain</h2>
            <%--first row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Username</label>
                    <asp:TextBox ID="UserName" runat="server" class="cc-box"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="*username required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Police Station</label>
                    <asp:TextBox ID="PoliceStation" runat="server" class="cc-box" placeholder="police station name"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PoliceStation" ErrorMessage="*station name required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Crime Type</label>
                    <asp:DropDownList ID="CrimeType" runat="server" class="cc-box">
                        <asp:ListItem Selected="True">--select--</asp:ListItem>
                        <asp:ListItem>Cyber crime</asp:ListItem>
                        <asp:ListItem>Drug Trafficking</asp:ListItem>
                        <asp:ListItem>Robbery</asp:ListItem>
                        <asp:ListItem>Violence</asp:ListItem>
                        <asp:ListItem>Burglary</asp:ListItem>
                        <asp:ListItem>Fraud</asp:ListItem>
                        <asp:ListItem>Money Laundering</asp:ListItem>
                        <asp:ListItem>Kidnapping</asp:ListItem>
                        <asp:ListItem>Assault</asp:ListItem>
                        <asp:ListItem>Theft</asp:ListItem>
                        <asp:ListItem>Human Trafficking</asp:ListItem>
                        <asp:ListItem>Terrorism</asp:ListItem>
                        <asp:ListItem>Murder</asp:ListItem>
                        <asp:ListItem>Rape</asp:ListItem>
                        <asp:ListItem>Domestic Violence</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <%--second row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Involved Persons</label>
                    <asp:TextBox ID="InvolvedPerson" runat="server" class="cc-box" placeholder="name persons who are involved in crime..."></asp:TextBox>
                </div>
            </div>
            <%--third row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Give us Proof</label>
                    <asp:FileUpload ID="FileUpload1" runat="server"  class="cc-box"/>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </div>
                <div>
                    <label>Crime Station</label>
                    <asp:TextBox ID="CrimeStation" runat="server" class="cc-box" placeholder="crime police station name"></asp:TextBox>
                </div>
                <div>
                    <label>Date of Crime</label>
                    <asp:TextBox ID="CrimeDate" runat="server" class="cc-box" placeholder="when crime happened?"></asp:TextBox>
               </div>
            </div>
            <%--fourth row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Current Date & Time</label>
                    <asp:TextBox ID="CurrentDate" runat="server" class="cc-box"  placeholder="enter current date and time"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CurrentDate" ErrorMessage="*date required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label>Status</label>
                    <asp:TextBox ID="CrimeStatus" runat="server" class="cc-box" placeholder="write 0, if crime solved, 1 if not solved..."></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" ControlToValidate="CrimeStatus" ErrorMessage="*required status" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--fifth row--%>
            <div class="cc-flexbox">
                <asp:Button ID="Button1" runat="server" Text="send complain to us !"  class="cc-btn" OnClick="Button1_Click"   />
                <input type="reset" value="clear fields" class="cc-btn"/><br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#009933"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

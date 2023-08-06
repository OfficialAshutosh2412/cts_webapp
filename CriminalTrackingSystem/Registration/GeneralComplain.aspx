<%@ Page Title="CTS | General Complain Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="GeneralComplain.aspx.cs" Inherits="CriminalTrackingSystem.Registration.GeneralComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--timer--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="mt-3">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" CssClass="bg-danger text-white p-2"></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <%--form--%>
    <div class="cc-container min-width">
        <div class="cc-semi-container ">
            <h2 class="p-3"><img src="../dist/img/letter.png"  style="width:60px;"/>General Complain</h2>
            <%--first row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Username</label>
                    <asp:TextBox ID="GCUserName"  runat="server" class="cc-box"></asp:TextBox>
                </div>
                <div>
                    <label>Police Station</label>
                    <asp:TextBox ID="GCPoliceStation" runat="server"  class="cc-box" placeholder="police station name"></asp:TextBox>
                </div>
                <div>
                    <label>Title</label>
                    <asp:TextBox ID="GCTitle" runat="server" class="cc-box" placeholder="write subject here..."></asp:TextBox>
                </div>
            </div>
            <%--second row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Give us Details</label>
                    <asp:TextBox ID="GCDetails" runat="server" class="cc-box"></asp:TextBox>
                </div>
            </div>
            <%--third row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Involved Persons</label>
                    <asp:TextBox ID="GCInvolvedPersons" runat="server" class="cc-box" ></asp:TextBox>
                </div>
                <div>
                    <label>Current Date & Time</label>
                    <asp:TextBox ID="GCCurrentDate" runat="server"  class="cc-box"  placeholder="enter current date and time"></asp:TextBox>
                    <br />
                </div>
            </div>
            <%--fourth row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Status</label>
                    <asp:TextBox ID="GCCrimeStatus" runat="server"  class="cc-box" placeholder="write 0, if crime solved, 1 if not solved..."></asp:TextBox>
                    <br />
                </div>
            </div>
            <%--fifth row--%>
            <div class="cc-flexbox">
                <asp:Button ID="Button1" runat="server" Text="send complain to us !"  class="cc-btn"  OnClick="Button1_Click"/>
                <input type="reset" value="clear fields" class="cc-btn"/>
                <asp:Label ID="Label2" runat="server" class="text-success pt-3"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

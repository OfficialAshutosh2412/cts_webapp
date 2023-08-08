<%@ Page Title="" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="MissingPerson.aspx.cs" Inherits="CriminalTrackingSystem.Registration.MissingPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="mt-3">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" CssClass="bg-danger text-white p-2 "></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <%--form--%>
    <div class="cc-container min-width">
        <div class="cc-semi-container ">
            <h2 class="p-3"><img src="../dist/img/user.png"  style="width:50px;"/>Report Missing Person</h2>
            <%--first row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Username</label>
                    <asp:TextBox ID="MPUserName"  runat="server" class="cc-box" placeholder="name here who login"></asp:TextBox>
                </div>
                <div>
                    <label>Police Station</label>
                    <asp:TextBox ID="MPPoliceStation" runat="server"  class="cc-box" placeholder="police station name"></asp:TextBox>
                </div>
            </div>
            <%--second row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Person Name</label>
                    <asp:TextBox ID="MPname" runat="server" class="cc-box" placeholder="name of missing person"></asp:TextBox>
                </div>
                <div>
                    <label>Person Contact No.</label>
                    <asp:TextBox ID="MPcontact" runat="server" class="cc-box" ></asp:TextBox>
                </div>
                <div>
                    <label>Email</label>
                    <asp:TextBox ID="MPemail" runat="server" class="cc-box" placeholder="email of login person"></asp:TextBox>
                </div>
            </div>
            <%--third row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Last View Location</label>
                    <asp:TextBox ID="MPlocation" runat="server"  class="cc-box"  ></asp:TextBox>
                    <br />
                </div>
                <div>
                    <label>Ransom</label>
                    <asp:TextBox ID="MPransom" runat="server"  class="cc-box"  ></asp:TextBox>
                    <br />
                </div>
                <div>
                    <label>Person D.O.B</label>
                    <asp:TextBox ID="MPdob" runat="server"  class="cc-box"  placeholder="missing person date of birth"></asp:TextBox>
                </div>
            </div>
            <%--fourth row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Person Details</label>
                    <asp:TextBox ID="MPdetails" runat="server"  class="cc-box" placeholder="give detail color, height, face structure of missing person"></asp:TextBox>
                </div>
            </div>
            <%--fifth row--%>
            <div class="cc-flexbox">
                <div>
                    <label>Person Latest Photo</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" class="cc-box" placeholder="email of login person"/>

                </div>
                <div>
                    <label>Current Date & Time</label>
                    <asp:TextBox ID="MPcurrentDate" runat="server"  class="cc-box" ></asp:TextBox>
                </div>
                <div>
                    <label>Status</label>
                    <asp:TextBox ID="MPstatus" runat="server"  class="cc-box" ></asp:TextBox>
                </div>
            </div>

            <%--sixth row--%>
            <div class="cc-flexbox">
                <asp:Button ID="Button1" runat="server" Text="send report !"  class="cc-btn" />
                <input type="reset" value="clear fields" class="cc-btn"/><br />
                <asp:Label ID="Label1" runat="server" ForeColor="#339933" CssClass="pt-3"></asp:Label>
            </div>
        </div>
    </div>  
</asp:Content>

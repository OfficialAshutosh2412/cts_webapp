<%@ Page Title="CTS | Missing Person Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="MissingPerson.aspx.cs" Inherits="CriminalTrackingSystem.Registration.MissingPerson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="missing-form">
        <%--form--%>
        <div class="missing-sub-form">
            <div >
                <%--first row--%>
                <div>
                    <div>
                        <label>
                            <i class="fa-solid fa-user"></i> Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MPUserName" ErrorMessage="username required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPUserName" runat="server" class="cc-box" placeholder="name here who login"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-building-shield"></i> Police Station<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MPPoliceStation" ErrorMessage="police station required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:DropDownList ID="MPPoliceStation" class="cc-box" runat="server" DataSourceID="SqlDataSource2" DataTextField="PoliceStationName" DataValueField="PoliceStationName" AppendDataBoundItems="True">
                            <asp:ListItem Selected="True">--select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PoliceStationName] FROM [PoliceStation]"></asp:SqlDataSource>
                    </div>
                </div>
                <%--second row--%>
                <div>
                    <div>
                        <label>
                            <i class="fa-solid fa-person-circle-question"></i> Person Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MPname" ErrorMessage="Missing Person name required" ForeColor="#FF5050">*</asp:RequiredFieldValidator> </label>
                        <asp:TextBox ID="MPname" runat="server" class="cc-box" placeholder="name of missing person"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-mobile-screen-button"></i> Person Contact No.<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MPcontact" ErrorMessage="Contact no. of missing person equired" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPcontact" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-envelope"></i> Email<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MPemail" ErrorMessage="Email required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPemail" runat="server" class="cc-box" placeholder="email of login person" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <%--third row--%>
                <div>
                    <div>
                        <label>
                            <i class="fa-solid fa-location-dot"></i> Last View Location<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MPlocation" ErrorMessage="Last location required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPlocation" runat="server" class="cc-box"></asp:TextBox>
                        <br />
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-indian-rupee-sign"></i> Ransom<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="MPransom" ErrorMessage="Ransom required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPransom" runat="server" class="cc-box"></asp:TextBox>
                        <br />
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-calendar-days"></i> Person D.O.B<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="MPdob" ErrorMessage="Person dob required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPdob" runat="server" class="cc-box" TextMode="Date" placeholder="missing person date of birth"></asp:TextBox>
                    </div>
                </div>
                <%--fourth row--%>
                <div>
                    <div>
                        <label>
                            <i class="fa-solid fa-file-pen"></i> Person Details<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="MPdetails" ErrorMessage="Person details required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPdetails" runat="server" class="cc-box" placeholder="give detail color, height, face structure of missing person"></asp:TextBox>
                    </div>
                </div>
                <%--fifth row--%>
                <div>
                    <div>
                        <label>
                            <i class="fa-solid fa-file-image"></i> Person Latest Photo<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Person photo required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:FileUpload ID="FileUpload1" runat="server" class="cc-box" placeholder="email of login person" />

                        <asp:Literal ID="Literal1" runat="server" Visible="False"></asp:Literal>
                    </div>
                    <div>
                        <label>
                            <i class="fa-solid fa-calendar-days"></i> Current Date & Time<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="MPcurrentDate" ErrorMessage="Fill Current Date Time" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MPcurrentDate" runat="server" class="cc-box" TextMode="DateTimeLocal"></asp:TextBox>
                    </div>
                </div>
                <%--sixth row--%>
                <div>
                    <asp:Button ID="Button2" runat="server" Text="Send" class="send" OnClick="Button1_Click" />
                    <input type="reset" value="clear" class="clear" /><asp:ValidationSummary ID="ValidationSummary1" CssClass="d-none" runat="server" ShowMessageBox="True" />
                    <br />
                </div>
            </div>
        </div>
    <%--grid view--%>
    <div class="missing-grid">
        <h2 class="p-3">
            <img src="../dist/img/user.png" style="width: 50px;" />Report Missing Person</h2>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-group-divider table-bordered" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MPId" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="MPId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MPId" />
                <asp:BoundField DataField="LoginUsername" HeaderText="Username" SortExpression="LoginUsername" />
                <asp:BoundField DataField="PoliceStation" HeaderText="Police Station" SortExpression="PoliceStation" />
                <asp:BoundField DataField="MPName" HeaderText="Person Name" SortExpression="MPName" />
                <asp:BoundField DataField="MPContactNumber" HeaderText="Person Phone No." SortExpression="MPContactNumber" />
                <asp:BoundField DataField="MPEmailId" HeaderText="Person Email" SortExpression="MPEmailId" />
                <asp:BoundField DataField="LastViewLocation" HeaderText="Last View Location" SortExpression="LastViewLocation" />
                <asp:BoundField DataField="Ransom" HeaderText="Ransom" SortExpression="Ransom" />
                <asp:BoundField DataField="Dob" HeaderText="Person DOB" SortExpression="Dob" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="CDT" HeaderText="Current Datetime" SortExpression="CDT" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:TemplateField HeaderText="Person Latest Photo" SortExpression="LatestPhoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LatestPhoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl='<%# Eval("LatestPhoto", "MissingPerson/{0}") %>' Width="74px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MissingPerson] WHERE ([LoginUsername] = @LoginUsername)">
            <SelectParameters>
                <asp:SessionParameter Name="LoginUsername" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

<%@ Page Title="CTS | General Complain Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="GeneralComplain.aspx.cs" Inherits="CriminalTrackingSystem.Registration.GeneralComplain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="complain-form-structure">
        <%--form--%>
        <div class="complain-form">
            <%--timer--%>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="mt-3 w-100">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" CssClass="bg-danger w-100 text-white p-2"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
            <div>
                <br />
                
                <%--first row--%>
                <div>
                    <div>
                        <label>Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GCUserName" ErrorMessage="username empty" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCUserName" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>Police Station<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="GCPoliceStation" ErrorMessage="police station required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCPoliceStation" runat="server" class="cc-box" placeholder="police station name"></asp:TextBox>
                    </div>
                    <div>
                        <label>Title<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GCTitle" ErrorMessage="title required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCTitle" runat="server" class="cc-box" placeholder="write subject here..."></asp:TextBox>
                    </div>
                </div>
                <%--second row--%>
                <div>
                    <div>
                        <label>Give us Details<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="GCDetails" ErrorMessage="details required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCDetails" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                </div>
                <%--third row--%>
                <div>
                    <div>
                        <label>Involved Persons<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="GCInvolvedPersons" ErrorMessage="involved person required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCInvolvedPersons" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>Current Date & Time<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GCCurrentDate" ErrorMessage="current date time required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCCurrentDate" runat="server" class="cc-box" placeholder="enter current date and time"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <%--fourth row--%>
                <div>
                    <div>
                        <label>Status<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GCCrimeStatus" ErrorMessage="status required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="GCCrimeStatus" runat="server" class="cc-box" placeholder="write 0, if crime solved, 1 if not solved..."></asp:TextBox>
                        <br />
                    </div>
                </div>
                <%--fifth row--%>
                <div>
                    <asp:Button ID="Button2" runat="server" Text="Send" class="send p-1" OnClick="Button1_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Update" class="cc-btn p-1" OnClick="Button3_Click"  />
                    <asp:Button ID="Button4" runat="server" Text="Delete" class="delete p-1" OnClick="Button4_Click"  />
                    <input type="reset" value="clear " class="clear p-1" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="d-none" ShowMessageBox="True" />
                </div>
            </div>
        </div>
        <br />
        
        <%--grid view--%>
        <div class=" complain-grid-view">
            <h2 class="p-3">
                    <img src="../dist/img/letter.png" style="width: 60px;" />General Complain</h2>
            <asp:GridView ID="GridView1" CssClass="table table-bordered table-responsive table-group-divider" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="GCId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True">
                        <ControlStyle CssClass="cc-btn" />
                    </asp:CommandField>
                    <asp:BoundField DataField="GCId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="GCId" />
                    <asp:BoundField DataField="LoginUsername" HeaderText="Username" SortExpression="LoginUsername" />
                    <asp:BoundField DataField="PoliceStation" HeaderText="Police Station" SortExpression="PoliceStation" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="InvolvePerson" HeaderText="Involved Person" SortExpression="InvolvePerson" />
                    <asp:BoundField DataField="CDT" HeaderText="Complain Date" SortExpression="CDT" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [GeneralComplain] WHERE ([LoginUsername] = @LoginUsername)">
                <SelectParameters>
                    <asp:SessionParameter Name="LoginUsername" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

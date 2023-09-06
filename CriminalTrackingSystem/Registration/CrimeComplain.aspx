<%@ Page Title="CTS | Crime Complain Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="CrimeComplain.aspx.cs" Inherits="CriminalTrackingSystem.Registration.CrimeComplain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="crime-complain">
        <%--form--%>
        <div class="crime-complain-form">
            <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Class="p-2 text-white bg-danger"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <%--date time renderer--%>
                <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000">
                </asp:Timer>
                <%--first row--%>
                <div>
                    <div>
                        <label>Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="*username required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="UserName" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>Police Station<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PoliceStation" ErrorMessage="*station name required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:DropDownList ID="PoliceStation" runat="server" class="cc-box" DataSourceID="SqlDataSource2" DataTextField="PoliceStationName" DataValueField="PoliceStationName" AppendDataBoundItems="True">
                            <asp:ListItem Selected="True">-select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PoliceStationName] FROM [PoliceStation]"></asp:SqlDataSource>

                    </div>
                    <div>
                        <label>Crime Type<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CrimeType" ErrorMessage="*type of crime required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
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
                <div>
                    <div>
                        <label>Involved Persons</label>
                        <asp:TextBox ID="InvolvedPerson" runat="server" class="cc-box" placeholder="name persons who are involved in crime..."></asp:TextBox>
                    </div>
                </div>
                <%--third row--%>
                <div>
                    <div>
                        <label>Give us Proof</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" class="cc-box" />
                        <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
                    </div>
                    <div>
                        <label>Crime Station<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CrimeStation" ErrorMessage="*Report Station  required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="CrimeStation" runat="server" class="cc-box" placeholder="crime police station name"></asp:TextBox>
                    </div>
                    <div>
                        <label>Date of Crime<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CrimeDate" ErrorMessage="*date of crime required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="CrimeDate" runat="server" class="cc-box" placeholder="when crime happened?"></asp:TextBox>
                    </div>
                </div>
                <%--fourth row--%>
                <div>
                    <div>
                        <label>Current Date & Time<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CurrentDate" ErrorMessage="*date required" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="CurrentDate" runat="server" class="cc-box" placeholder="enter current date and time"></asp:TextBox>

                    </div>
                    <div>
                        <label>Status<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CrimeStatus" ErrorMessage="*required status" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="CrimeStatus" runat="server" class="cc-box" placeholder="write 0, if crime solved, 1 if not solved..."></asp:TextBox>
                    </div>
                </div>
                <%--fifth row--%>
                <div>
                    <asp:Button ID="Button2" runat="server" Text="Send" class=" send" OnClick="Button1_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Update" class="cc-btn" OnClick="Button3_Click" />
                    <asp:Button ID="Button3" runat="server" Text="Delete" class=" delete" OnClick="Button3_Click1" />
                    <input type="reset" value="clear" class=" clear" />

                    <asp:ValidationSummary CssClass="d-none" ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
                </div>
            </div>
        </div>
        <br />
        <%--grid--%>
        <div class="crime-complain-grid-view">
            <h2>
                <img src="../dist/img/trial.png" />Crime Complain
            </h2>
            <asp:GridView ID="GridView1" CssClass="table  table-group-divider table-bordered"  runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CCId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                    <ControlStyle CssClass="cc-btn p-2" />
                    </asp:CommandField>
                    <asp:BoundField DataField="CCId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="CCId">
                        <ItemStyle ForeColor="Black" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LoginUsername" HeaderText="Username" SortExpression="LoginUsername">
                    </asp:BoundField>
                    <asp:BoundField DataField="PoliceStation" HeaderText="Police Station" SortExpression="PoliceStation">
                    </asp:BoundField>
                    <asp:BoundField DataField="CrimeType" HeaderText="Crime Type" SortExpression="CrimeType">
                    </asp:BoundField>
                    <asp:BoundField DataField="InvolvePerson" HeaderText="Involved Person" SortExpression="InvolvePerson">
                    </asp:BoundField>
                    <asp:BoundField DataField="CrimeStation" HeaderText="Crime Station" SortExpression="CrimeStation">
                    </asp:BoundField>
                    <asp:BoundField DataField="CrimeDate" HeaderText="Date of Crime" SortExpression="CrimeDate">
                    </asp:BoundField>
                    <asp:BoundField DataField="CDT" HeaderText="Complain Date" SortExpression="CDT">
                    </asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Proof Image" SortExpression="AnyProof">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AnyProof") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="74px" ImageUrl='<%# Eval("AnyProof","AnyProof/{0}") %>' Width="79px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#5D7B9D" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CrimeComplain] WHERE ([LoginUsername] = @LoginUsername)" DeleteCommand="DELETE FROM [CrimeComplain] WHERE [CCId] = @CCId" InsertCommand="INSERT INTO [CrimeComplain] ([LoginUsername], [PoliceStation], [CrimeType], [InvolvePerson], [AnyProof], [CrimeStation], [CrimeDate], [CDT], [Status]) VALUES (@LoginUsername, @PoliceStation, @CrimeType, @InvolvePerson, @AnyProof, @CrimeStation, @CrimeDate, @CDT, @Status)" UpdateCommand="UPDATE [CrimeComplain] SET [LoginUsername] = @LoginUsername, [PoliceStation] = @PoliceStation, [CrimeType] = @CrimeType, [InvolvePerson] = @InvolvePerson, [AnyProof] = @AnyProof, [CrimeStation] = @CrimeStation, [CrimeDate] = @CrimeDate, [CDT] = @CDT, [Status] = @Status WHERE [CCId] = @CCId">
                <DeleteParameters>
                    <asp:Parameter Name="CCId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LoginUsername" Type="String" />
                    <asp:Parameter Name="PoliceStation" Type="String" />
                    <asp:Parameter Name="CrimeType" Type="String" />
                    <asp:Parameter Name="InvolvePerson" Type="String" />
                    <asp:Parameter Name="AnyProof" Type="String" />
                    <asp:Parameter Name="CrimeStation" Type="String" />
                    <asp:Parameter Name="CrimeDate" Type="String" />
                    <asp:Parameter Name="CDT" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="LoginUsername" SessionField="user" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LoginUsername" Type="String" />
                    <asp:Parameter Name="PoliceStation" Type="String" />
                    <asp:Parameter Name="CrimeType" Type="String" />
                    <asp:Parameter Name="InvolvePerson" Type="String" />
                    <asp:Parameter Name="AnyProof" Type="String" />
                    <asp:Parameter Name="CrimeStation" Type="String" />
                    <asp:Parameter Name="CrimeDate" Type="String" />
                    <asp:Parameter Name="CDT" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="CCId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

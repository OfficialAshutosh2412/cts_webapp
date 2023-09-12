<%@ Page Title="CTS | Missing Valuable Portal" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="MissingValuable.aspx.cs" Inherits="CriminalTrackingSystem.Registration.MissingValuable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="valuable-container">
        <%--form--%>
        <div class="valuable-form">
            <div>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" class="mt-3">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" CssClass="p-2 bg-danger text-white"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <%--first row--%>
                <div>
                    <div>
                        <label>
                            Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MVUserName" ErrorMessage="username required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MVUserName" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            Police Station<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MVPoliceStation" ErrorMessage="Police station required" ForeColor="#FF5050">*</asp:RequiredFieldValidator></label>
                        <asp:DropDownList ID="MVPoliceStation" class="cc-box" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="PoliceStationName" DataValueField="PoliceStationName">
                            <asp:ListItem Selected="True">--select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PoliceStationName] FROM [PoliceStation]"></asp:SqlDataSource>
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
                <div>
                    <div>
                        <label>
                            Valuable Cost<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MVCost" ErrorMessage="valuable cost required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MVCost" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            Any suspect<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MVSuspect" ErrorMessage="Suspets required, if none then write &quot;not known&quot;" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MVSuspect" runat="server" class="cc-box"></asp:TextBox>
                    </div>
                    <div>
                        <label>
                            Valuable or valuable Receipt Photo<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Valuable recipt image required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:FileUpload ID="FileUpload1" runat="server" class="cc-box" />
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </div>
                </div>
                <%--third row--%>
                <div>
                    <div>
                        <label>
                            Valuable Details<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MVDetails" ErrorMessage="details required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MVDetails" runat="server" class="cc-box" placeholder="write few identification of valuables..."></asp:TextBox>
                        <br />
                    </div>
                </div>
                <%--fourth row--%>
                <div>
                    <div>
                        <label>
                            Current Date & Time<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="MVCurrentDate" ErrorMessage="datetime required" ForeColor="#FF5050">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="MVCurrentDate" runat="server" class="cc-box" TextMode="DateTimeLocal" placeholder="enter current date and time"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <%--fifth row--%>
                <div>
                    <asp:Button ID="Button2" runat="server" Text="Send" class="send" OnClick="Button1_Click" />
                    <input type="reset" value="clear" class="clear" /><asp:ValidationSummary ID="ValidationSummary1" CssClass="d-none" runat="server" ShowMessageBox="True" />
                    <br />
                </div>
            </div>
        </div>
        <%--grid view--%>
        <div class="valuable-grid">
            <h2 class="p-3">
                    <img src="../dist/img/diamond_2600353.png" style="width: 60px;" />Missing Valuable Report</h2>
            <asp:GridView ID="GridView1" CssClass="table table-group-divider " runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MVId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="MVId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MVId" />
                    <asp:BoundField DataField="LoginUsername" HeaderText="Username" SortExpression="LoginUsername" />
                    <asp:BoundField DataField="PoliceStation" HeaderText="Police Station" SortExpression="PoliceStation" />
                    <asp:BoundField DataField="ValuableType" HeaderText="Type" SortExpression="ValuableType" />
                    <asp:BoundField DataField="ValuableCost" HeaderText="Cost" SortExpression="ValuableCost" />
                    <asp:BoundField DataField="AnySuspect" HeaderText="Suspect" SortExpression="AnySuspect" />
                    <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                    <asp:BoundField DataField="CDT" HeaderText="Report Date" SortExpression="CDT" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:TemplateField HeaderText="Valuable Recipt" SortExpression="ValuablePurchaseRecipt">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ValuablePurchaseRecipt") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="73px" ImageUrl='<%# Eval("ValuablePurchaseRecipt", "MissingValuableRecipt/{0}") %>' Width="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [MissingValuable] WHERE ([LoginUsername] = @LoginUsername)">
                <SelectParameters>
                    <asp:SessionParameter Name="LoginUsername" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

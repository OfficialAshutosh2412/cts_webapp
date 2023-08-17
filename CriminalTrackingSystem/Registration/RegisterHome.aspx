<%@ Page Title="CTS | User Home Panel" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="RegisterHome.aspx.cs" Inherits="CriminalTrackingSystem.Registration.RegisterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-home-modal p-5 text-white bg-dark">
        <h1>Welcome, 
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" class="text-capitalize"></asp:Label>
        </h1>
        
    </div>
    <div class="user-profile table table-responsive">
        <asp:GridView ID="GridView1" CssClass=" m-auto table table-responsive  table-group-divider w-100" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="Profile" InsertVisible="False" SortExpression="RegId">
                    
                    <ItemTemplate>
                        <table class="w-100 table table-responsive table-hover">
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="ID"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("RegId") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label27" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="Pincode"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("Pincode") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label30" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="Marriage Status"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("Mstatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label32" runat="server" Text="Living Status"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("Lstatus") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label33" runat="server" Text="Adhaar Number"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text='<%# Bind("AdharNumber") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label34" runat="server" Text="Phone"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text='<%# Bind("ContactNumber") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label35" runat="server" Text="Profile Image"></asp:Label>
                                </td>
                                <td>:</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="192px" ImageUrl='<%# Eval("ProfilePhoto", "../RegisterPhoto/{0}") %>' Width="161px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div class="register-card">
        <div>
            <img src="../dist/img/trial.png" />
            <h4>File Crimes</h4>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/CrimeComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/letter.png" />
            <h4>File Complain</h4>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/GeneralComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/user.png" />
            <h4>File Missings </h4>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingPerson.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <img src="../dist/img/diamond_2600353.png" />
            <h4>File Missing Valuable</h4>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingValuable.aspx">go now !</asp:HyperLink>
        </div>
    </div>
    
</asp:Content>

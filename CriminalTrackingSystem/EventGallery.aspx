<%@ Page Title="" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="EventGallery.aspx.cs" Inherits="CriminalTrackingSystem.EventGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="event-gallery">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField SortExpression="Picture">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div>
                            <div>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="166px" ImageUrl='<%# Eval("Picture", "~/Admin/AdminGallery/Events/{0}") %>' Width="237px" />
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Picture] FROM [EventGallery]"></asp:SqlDataSource>

    </div>
</asp:Content>

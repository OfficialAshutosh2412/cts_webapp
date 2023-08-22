<%@ Page Title="CTS | Admin | FAQ" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin-FAQ.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Admin_FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="admin-form-container">
        <h1><i class="fa-solid fa-question"></i> Frequently Asked Questions</h1>
        <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:CommandField ButtonType="Image" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="~/dist/img/edit.png" EditText="" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="">
                <ControlStyle CssClass="p-2" />
                </asp:CommandField>
                <asp:BoundField DataField="FaqId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="FaqId" >
                </asp:BoundField>
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" >
                </asp:BoundField>
                <asp:BoundField DataField="Answer" HeaderText="Reply" SortExpression="Answer" />
            </Columns>
            <PagerStyle HorizontalAlign = "Right" CssClass = "GridPager"/>
            
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Faq] WHERE [FaqId] = @FaqId" InsertCommand="INSERT INTO [Faq] ([Question], [Answer]) VALUES (@Question, @Answer)" SelectCommand="SELECT * FROM [Faq]" UpdateCommand="UPDATE [Faq] SET [Question] = @Question, [Answer] = @Answer WHERE [FaqId] = @FaqId">
            <DeleteParameters>
                <asp:Parameter Name="FaqId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Answer" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Question" Type="String" />
                <asp:Parameter Name="Answer" Type="String" />
                <asp:Parameter Name="FaqId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

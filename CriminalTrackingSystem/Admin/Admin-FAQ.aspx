<%@ Page Title="CTS | Admin | FAQ" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="Admin-FAQ.aspx.cs" Inherits="CriminalTrackingSystem.Admin.Admin_FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-content-height">
        
        <%--form--%>
        <div class="bg-dark p-2">
            <h4 class="text-center"><i class="fa-solid fa-question"></i> Frequently Asked Questions</h4>
        <div class="faq-form">
            <div>
                <asp:TextBox ID="question" runat="server" CssClass="cc-box" placeholder="question"></asp:TextBox>
            </div>
            <div>
                 <asp:TextBox  ID="answer" runat="server" CssClass="cc-box" placeholder="answer"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="Button2" runat="server" Text="Send" CssClass="delete" OnClientClick="return ValidateFaq()"  OnClick="FAQButton1_Click"/>
            </div>
            
        </div>
        </div>
        <%--grid view--%>
        <div class="faq-grid">
            <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FaqId" DataSourceID="SqlDataSource1">
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
        
    </div>

    <script>
        //faq validation
        function ValidateFaq() {
            var quest = document.getElementById('<%= question.ClientID %>').value;
            if (quest == "") {
                alert("empty question box not allowed !");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</asp:Content>

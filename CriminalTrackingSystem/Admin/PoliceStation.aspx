<%@ Page Title="CTS | Admin | Police Station" Language="C#" MasterPageFile="~/Admin/AdminLayout.Master" AutoEventWireup="true" CodeBehind="PoliceStation.aspx.cs" Inherits="CriminalTrackingSystem.Admin.PoliceStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><i class="fa-solid fa-building-shield text-light"></i>Police Stations</h1>
    <hr />
    <div class="policeContainer">
        <div class="policeItem">
            <div>
                <asp:Label Text="Chowki Incharge Name" runat="server" />
                <asp:TextBox ID="chowki" CssClass="cc-box" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label Text="Police Station Name" runat="server" />
                <asp:TextBox ID="name" CssClass="cc-box" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label Text="Agent Name" runat="server" />
                <asp:TextBox ID="agentname" CssClass="cc-box" runat="server"></asp:TextBox>
            </div>
        </div>
     
        <div class="policeItem">
            <div>
                <asp:Label Text="First CUG Number" runat="server" />
                <asp:TextBox ID="cugone" CssClass="cc-box" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label Text="Second CUG Number" runat="server" />
                <asp:TextBox ID="cugtwo" CssClass="cc-box" runat="server"></asp:TextBox>
            </div>
            
        </div>
       
        <div class="policeItem">
            <div>
                <asp:Label Text="Agent Phone Number" runat="server" />
                <asp:TextBox ID="agentnumber" CssClass="cc-box"  runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label Text="Police Station Picture" runat="server" />
                <asp:FileUpload ID="FileUpload1" CssClass="cc-box" runat="server" class="bg-white text-dark"/>
            </div>
        </div>
        
        <div class="policeItem">
            <asp:Button Text="save" runat="server" CssClass="cc-btn" OnClick="Unnamed8_Click"/>
        </div>
        <hr />
    </div>
    <%--grid view--%>
    <h1>Records</h1>
    <div class="faq-grid">
        <asp:GridView ID="GridView1" CssClass="w-100 table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="PoliceStationId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/dist/img/close.png" CancelText="" DeleteImageUrl="~/dist/img/delete.png" DeleteText="" EditImageUrl="~/dist/img/edit.png" EditText="" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/dist/img/check-mark.png" UpdateText="" />
                <asp:BoundField DataField="PoliceStationId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="PoliceStationId" />
                <asp:TemplateField HeaderText="Police Station Photo" SortExpression="PoliceStationPhoto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PoliceStationPhoto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="113px" ImageUrl='<%# Eval("PoliceStationPhoto","./Police/{0}") %>' Width="109px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ChowkiInchargeName" HeaderText="Chowki Incharge" SortExpression="ChowkiInchargeName" />
                <asp:BoundField DataField="PoliceStationName" HeaderText="Police Station" SortExpression="PoliceStationName" />
                <asp:BoundField DataField="COG1" HeaderText="CUG Number 1" SortExpression="COG1" />
                <asp:BoundField DataField="COG2" HeaderText="CUG Number 2" SortExpression="COG2" />
                <asp:BoundField DataField="AgentName" HeaderText="Agent Name" SortExpression="AgentName" />
                <asp:BoundField DataField="AgentContactNumber" HeaderText="Agent Contact No." SortExpression="AgentContactNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PoliceStation] WHERE [PoliceStationId] = @PoliceStationId" InsertCommand="INSERT INTO [PoliceStation] ([ChowkiInchargeName], [PoliceStationName], [COG1], [COG2], [AgentName], [AgentContactNumber], [PoliceStationPhoto]) VALUES (@ChowkiInchargeName, @PoliceStationName, @COG1, @COG2, @AgentName, @AgentContactNumber, @PoliceStationPhoto)" SelectCommand="SELECT * FROM [PoliceStation]" UpdateCommand="UPDATE [PoliceStation] SET [ChowkiInchargeName] = @ChowkiInchargeName, [PoliceStationName] = @PoliceStationName, [COG1] = @COG1, [COG2] = @COG2, [AgentName] = @AgentName, [AgentContactNumber] = @AgentContactNumber, [PoliceStationPhoto] = @PoliceStationPhoto WHERE [PoliceStationId] = @PoliceStationId">
            <DeleteParameters>
                <asp:Parameter Name="PoliceStationId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ChowkiInchargeName" Type="String" />
                <asp:Parameter Name="PoliceStationName" Type="String" />
                <asp:Parameter Name="COG1" Type="Decimal" />
                <asp:Parameter Name="COG2" Type="Decimal" />
                <asp:Parameter Name="AgentName" Type="String" />
                <asp:Parameter Name="AgentContactNumber" Type="Decimal" />
                <asp:Parameter Name="PoliceStationPhoto" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ChowkiInchargeName" Type="String" />
                <asp:Parameter Name="PoliceStationName" Type="String" />
                <asp:Parameter Name="COG1" Type="Decimal" />
                <asp:Parameter Name="COG2" Type="Decimal" />
                <asp:Parameter Name="AgentName" Type="String" />
                <asp:Parameter Name="AgentContactNumber" Type="Decimal" />
                <asp:Parameter Name="PoliceStationPhoto" Type="String" />
                <asp:Parameter Name="PoliceStationId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
</asp:Content>

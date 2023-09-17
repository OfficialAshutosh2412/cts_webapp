<%@ Page Title="CTS | User Home Panel" Language="C#" MasterPageFile="~/Registration/RegisterLayout.Master" AutoEventWireup="true" CodeBehind="RegisterHome.aspx.cs" Inherits="CriminalTrackingSystem.Registration.RegisterHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-welcome">
        <h1>Welcome, 
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" class="text-capitalize"></asp:Label>
            <asp:HyperLink ID="HyperLink5" runat="server" title="profile" NavigateUrl="~/Registration/Profile.aspx"><i class="fa-solid fa-user-pen"></i></asp:HyperLink>
        </h1>
    </div>
    <div class="register-card text-center">
        <div>
            <i style="font-size:3rem;color:#01308f" class="fa-solid fa-handcuffs"></i>
            <asp:Label  ID="cc" runat="server" style="font-size:3rem"/>
            <h6>Crimes Complain you filled</h6>
            <section class="d-flex" style="font-size:1.5rem">
                <section class="w-100 m-2">
                    <i class="fa-solid fa-circle-check" style="color: #07b03a;" title="solved cases"></i>
                    <asp:Label ID="solvedcc" runat="server" title="solved cases"/>
                </section>
                <section class="w-100 m-2">
                    <i class="fa-solid fa-hand" style="color: #e13d3d;" title="pending cases"></i>
                    <asp:Label ID="pendingcc" runat="server" title="pending cases"/>
                </section>
            </section>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/CrimeComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <i style="font-size:3rem;color:#01308f" class="fa-solid fa-file-signature"></i>
            <asp:Label  ID="gc" runat="server" style="font-size:3rem"/>
            <h6>General Complains you filled</h6>
            <section class="d-flex" style="font-size:1.5rem">
                <section class="w-100 m-2">
                    <i class="fa-solid fa-circle-check" style="color: #07b03a;" title="solved cases"></i>
                    <asp:Label ID="solvedgc" runat="server" title="solved cases"/>
                </section>
                <section class="w-100 m-2">
                    <i class="fa-solid fa-hand" style="color: #e13d3d;" title="pending cases"></i>
                    <asp:Label ID="pendinggc" runat="server" title="pending cases"/>
                </section>
            </section>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/GeneralComplain.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <i style="font-size:3rem;color:#01308f" class="fa-solid fa-person"></i>
            <asp:Label  ID="mp" runat="server" style="font-size:3rem"/>
            <h6>Missing Person complains you filled</h6>
            <section class="d-flex" style="font-size:1.5rem">
                <section class="w-100 m-2">
                    <i class="fa-solid fa-circle-check" style="color: #07b03a;" title="solved cases"></i>
                    <asp:Label ID="solvedmp" runat="server" title="solved cases"/>
                </section>
                <section class="w-100 m-2">
                    <i class="fa-solid fa-hand" style="color: #e13d3d;" title="pending cases"></i>
                    <asp:Label ID="pendingmp" runat="server" title="pending cases"/>
                </section>
            </section>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingPerson.aspx">go now !</asp:HyperLink>
        </div>
        <div>
            <i style="font-size:3rem;color:#01308f" class="fa-regular fa-gem"></i>
            <asp:Label  ID="mv" runat="server" style="font-size:3rem"/>
            <h6>Missing Valuable Complain you filled</h6>
            <section class="d-flex" style="font-size:1.5rem">
                <section class="w-100 m-2">
                    <i class="fa-solid fa-circle-check" style="color: #07b03a;" title="solved cases"></i>
                    <asp:Label ID="solvedmv" runat="server" title="solved cases"/>
                </section>
                <section class="w-100 m-2">
                    <i class="fa-solid fa-hand" style="color: #e13d3d;" title="pending cases"></i>
                    <asp:Label ID="pendingmv" runat="server" title="pending cases"/>
                </section>
            </section>
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="cc-btn p-2" NavigateUrl="~/Registration/MissingValuable.aspx">go now !</asp:HyperLink>
        </div>
    </div>

    <div class="">
        <div>
            
        </div>
        <div></div>
    </div>
</asp:Content>

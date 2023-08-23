<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--login--%>
    <div class="signin bg-white p-5 shadow-lg rounded show-login">
        <h1>Login</h1>
        <div class="mb-3">
            <label class="form-label">Username</label>
            <asp:TextBox ID="LoginName" runat="server" class="cc-box"></asp:TextBox>
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <asp:TextBox ID="LoginPassword" runat="server" TextMode="Password" class="cc-box" ></asp:TextBox>
        </div>
        <div class="d-flex justify-content-start align-items-center">
            <asp:Button ID="Button1" runat="server" Text="login now !" OnClientClick="return validateLogin()" class="send p-2" OnClick="Button1_Click" /><br />
            <label class="delete p-2" id="login-close">close</label>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-secondary" NavigateUrl="~/Signup.aspx">click here to create account...</asp:HyperLink>
        <asp:ValidationSummary ID="ValidationSummary1" CssClass="d-none" runat="server" ShowMessageBox="True" />
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FF5050"></asp:Label>
        </div>
    </div>
    <%--hero--%>
    <div class="hero">
        <div class="left"><img src="dist/img/cts_logo.png" /></div>
        <div class="right">
            <h1><span>Crime</span> Tracking System</h1>
            <p>CTS is an online portal to track crime records.</p>
            <small>Managed by State Police Department</small>
            <label class="send">join us</label>
        </div>
    </div>
    <%--news--%>
    <div class="news">
        <div class="bg-danger text-white p-2 ticker">NEWS</div>
        <div class="two">
            <a href="/Login.aspx">Site is under development.</a>
            <a href="/Login.aspx">If you see crime happens anywhere, report to our website.</a>
            <a href="/Login.aspx">User no enabled to upload their profile.</a>
            <a href="/Login.aspx">Profile edit option will be appear soon</a>
        </div>
    </div>
    <%--about--%>

    <div class="about" id="about">
        <h1 class="section-title"><span>About</span> Us</h1>
        <div class="card-info">
            <div class="card-info-sections">
                <div class="card-item">
                    <h1>What's CTS ?</h1>
                    <p>Criminal Tracking Systems (CTS) is a plan scheme conceived in the light of experience of a non-plan scheme namely.</p>
                </div>
                <div class="card-item">
                    <h1>CTS Vissions</h1>
                    <p>Make the Police functioning citizen friendly and more transparent by automating the functioning of Police Stations.</p>
                </div>
                <div class="card-item">
                    <h1>Stakeholder</h1>
                    <p>Citizens/ Citizens groups, MHA/NCRB, State Police department, External Departments of the State such as Courts, and Peoples.</p>
                </div>
                <div class="card-item">
                    <h1>Benefits</h1>
                    <p>
                        Enhanced tools for investigation, Centralized crime and criminal information repository along with the criminal images.<p>
                </div>
            </div>
        </div>
    </div>

    <%--services--%>

    <div class="service-container" id="services">
        <h1 class="section-title"><span>Our</span> Services</h1>
        <div class="services">
            <%--first--%>
            <div class="services-item">
                <div>
                    <p>Missing Person Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/mr.jpg" />
                </div>
            </div>
            <%--second--%>
            <div class="services-item">
                <div>
                    <p>Missing Valuable Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/mv.jpg" />
                </div>
            </div>
            <%--third--%>
            <div class="services-item">
                <div>
                    <p>Crime Complain</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/cc.jpg" />
                </div>
            </div>
            <%--fourth--%>
            <div class="services-item">
                <div>
                    <p>Missing Person Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/gc.jpg" />
                </div>
            </div>
        </div>
    </div>

    <%--gallery--%>
    <div id="gallery">
        <h1 class="section-title"><span>Moment of</span> captures</h1>
        <div class="gallery">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/dist/img/02_07_2023-gorakhpur_aiims_police_station_23458982.jpg" OnClick="ImageButton1_Click" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/dist/img/14_04_2022-14azm_20_14042022_252-c-1.5_22627032_163740.jpg" OnClick="ImageButton2_Click" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/dist/img/17_06_2021-16alr_12_16062021_499-c-1.5_21744534_11139.jpg" OnClick="ImageButton3_Click" />
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/dist/img/3549634286_882d3c48f9_b.jpg" OnClick="ImageButton4_Click" />
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/dist/img/4_1614768752.jpg" OnClick="ImageButton5_Click" />
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/dist/img/AD1.jpg" OnClick="ImageButton6_Click" />
            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/dist/img/AD2.jpg" OnClick="ImageButton7_Click" />
            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/dist/img/AD3...jpg" OnClick="ImageButton8_Click" />
            <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/dist/img/AD4.jpg" OnClick="ImageButton9_Click" />
            <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/dist/img/AD5.jpg" OnClick="ImageButton10_Click" />
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/dist/img/AD6.jpg" OnClick="ImageButton11_Click" />
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/dist/img/ANI-20221002010026.jpg" OnClick="ImageButton12_Click" />
            <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/dist/img/b80eae0e-dcf4-45a5-90bc-ed57f03ebea71649490885320_1649500857.jpg" OnClick="ImageButton13_Click" />
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/dist/img/bhatta-basti-rape-case-jaipur_1616044293.jpg" OnClick="ImageButton14_Click" />
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/dist/img/chitrakoot-2.png" OnClick="ImageButton15_Click" />
            <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/dist/img/Fru8lECaEAE3I-O.png" OnClick="ImageButton16_Click" />
            <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="~/dist/img/H_202002251149133980.jpg" OnClick="ImageButton17_Click" />
            <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="~/dist/img/Hata.jpeg" OnClick="ImageButton18_Click" />
            <asp:ImageButton ID="ImageButton19" runat="server" ImageUrl="~/dist/img/Lucknow-Police.png" OnClick="ImageButton19_Click" />
            <asp:ImageButton ID="ImageButton20" runat="server" ImageUrl="~/dist/img/Police-Station-district-Aligarh.jpg" OnClick="ImageButton20_Click" />
            <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/dist/img/police station_0.jpg.jpeg" OnClick="ImageButton21_Click" />
            <asp:ImageButton ID="ImageButton22" runat="server" ImageUrl="~/dist/img/up-police-3-1200x700.jpg" OnClick="ImageButton22_Click" />
            <asp:ImageButton ID="ImageButton23" runat="server" ImageUrl="~/dist/img/uuu_1646034261.jpg" OnClick="ImageButton23_Click" />
            <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/dist/img/whatsapp-image-2022-05-05-at-24_1651854871.jpg" OnClick="ImageButton24_Click" />
            <asp:ImageButton ID="ImageButton25" runat="server" ImageUrl="~/dist/img/whatsapp-image-2022-10-16-at-083029_1665903787.jpg" OnClick="ImageButton25_Click" />
        </div>
    </div>


    <script>
        function validateLogin() {
            var lname = document.getElementById('<%= LoginName.ClientID %>').value;
            var lpass = document.getElementById('<%= LoginPassword.ClientID %>').value;
            if (lname == "" || lpass == "") {
                alert("field is empty !");
                return false;
            }
            else {
                return true;
            }
        }
        
    </script>
</asp:Content>

<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Faq] ORDER BY [FaqId], [Question], [Answer]"></asp:SqlDataSource>
    <%--news--%>
    <div class="news" id="news" >
        <div class="bg-danger text-white p-2 ticker">NEWS</div>
        <div class="two">
            <a href="/Login.aspx">Site is under development.</a>
            <a href="/Login.aspx">If you see crime happens anywhere, report to our website.</a>
            <a href="/Login.aspx">User no enabled to upload their profile.</a>
            <a href="/Login.aspx">Profile edit option will be appear soon</a>
        </div>
    </div>
    <%--hero--%>
    <div class="hero" id="hero">
        <div class="left">
            <img class="spin" src="dist/img/11(2).png" alt="animator" />
        </div>
        <div class="right">
            <h1><span>Criminal</span> Tracking System</h1>
            <p>CTS is an online portal to track crime records.</p>
            <small>Managed by State Police Department</small>
            <label><i class="fa-solid fa-phone"></i> +91-0522-112</label>
            <asp:HyperLink ID="HyperLink1" runat="server" cssClass="send" NavigateUrl="~/Login.aspx">join us</asp:HyperLink>
        </div>
    </div>
    <%--about--%>
    <div class="about" id="about">
        <h1 class="section-title"><span>About</span> Us</h1>
        <div class="card-info">
            <div class="card-info-sections">
                <div class="card-item">
                    <h1>What's CTS ?
                    </h1>
                    <p>Criminal Tracking Systems (CTS) is a plan scheme conceived in the light of experience of a non-plan scheme namely.</p>
                </div>
                <div class="card-item">
                    <h1>CTS Vissions
                    </h1>
                    <p>Make the Police functioning citizen friendly and more transparent by automating the functioning of Police Stations.</p>
                </div>
                <div class="card-item">
                    <h1>Stakeholder
                    </h1>
                    <p>Citizens/ Citizens groups, MHA/NCRB, State Police department, External Departments of the State such as Courts, and Peoples.</p>
                </div>
                <div class="card-item">
                    <h1>Benefits
                    </h1>
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
                    <img src="dist/img/mr.jpg" alt="Missing person image"/>
                </div>
            </div>
            <%--second--%>
            <div class="services-item">
                <div>
                    <p>Missing Valuable Report</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <picture>
                        <source type="image/webp" srcset="dist/img/mv.webp" />
                        <source type="image/webp" srcset="dist/img/mv.jpg" />
                        <img src="dist/img/mv.jpg" alt="missing valuable image"/>
                    </picture>
                </div>
            </div>
            <%--third--%>
            <div class="services-item">
                <div>
                    <p>Crime Complain</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/cc.jpg" alt="crime complain image"/>
                </div>
            </div>
            <%--fourth--%>
            <div class="services-item">
                <div>
                    <p>General Complain</p>
                    <a href="/Login.aspx" class="cc-btn">visit</a>
                </div>
                <div class="hide">
                    <img src="dist/img/gc.jpg" alt="general complain image"/>
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
        </div>
    </div>
    <%--contact us--%>
    <div class=" min-width contact-us-container" id="contact">
        <h1 class="section-title"><span>Give us</span> a message</h1>
        <div class="p-3 contact-us-container-form">
            <div class=" d-flex">
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        Name
                    </label>
                   <asp:TextBox ID="ContactName" runat="server" type="text" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        Email
                    </label>
                   <asp:TextBox ID="ContactEmail" runat="server" type="email" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        Phone
                    </label>
                   <asp:TextBox ID="ContactNumber" runat="server" type="text" class="cc-box " MaxLength="13"></asp:TextBox>
                </div>
            </div>
            <div class="mb-1 w-100 p-2">
                <label class="form-label" for="purpose">Purpose</label>
                <asp:TextBox ID="ContactPurpose" runat="server" class="cc-box "></asp:TextBox>
            </div>
            <div class="mb-1 p-2">
                <label class="form-label">
                    Give Us Details
                </label>
               <asp:TextBox ID="ContactDetails" runat="server" TextMode="MultiLine" class="cc-box "></asp:TextBox>
            </div>
            <asp:Button ID="ContactBtn" runat="server" Text="submit details" class="send" OnClientClick="return validateContact()" OnClick="ContactBtn_Click" />

            <asp:Label ID="Label2" runat="server" ForeColor="#339933"></asp:Label>
        </div>
    </div>
    <%--member--%>
    <div class="member">
        <h1 class="section-title"><span>Our</span> Team</h1>
        <div class="mentor">
            <div class="image">
                <img src="dist/img/mentor 1.jpg" />
            </div>
            <div class="image-data">
                <h1>Our Mentor</h1>
                <p><strong>Mr. Sushant Pathhak</strong> project mentor.</p>
                <small>Project Scientist at Remote Sensing Applications Centre Uttar Pradesh, Lucknow</small>
                <div class="member-link">
                    <a href="https://www.facebook.com/engg.superpower" target="_blank"><i class="fa-brands fa-facebook-f text-light"></i></a>
                    <a href="https://www.instagram.com/scientistsushantpathak/" target="_blank"><i class="fa-brands text-light fa-square-instagram"></i></a>
                    <a href="https://www.indiamart.com/sunriseinfotechsolution/" target="_blank"><i class="fa-solid fa-cart-shopping text-light"></i></a>
                    <a href="https://sunrise-infotech-solution.business.site/" target="_blank"><i class="fa-solid fa-globe text-light"></i></a>
                </div>
            </div>
        </div>
        <div class="mentor">
            <div class="image">
                <img src="dist/img/developer.jpg" />
            </div>
            <div class="image-data">
                <h1>The Developer</h1>
                <p><strong>Mr. Ashutosh Prasad</strong> project developer.</p>
                <small>MCA graduate from AIET and a full stack developer on python & ASP.NET with MVC</small>
                 <div class="member-link">
                    <a href="https://www.facebook.com/ashutosh.prasad.754365/" target="_blank"><i class="fa-brands text-light fa-facebook-f"></i></a>
                    <a href="https://www.instagram.com/official.ashu.2000/" target="_blank"><i class="fa-brands fa-square-instagram text-light"></i></a>
                    <a href="https://twitter.com/Ashutos96662173" target="_blank"><i class="fa-brands fa-twitter text-light"></i></a>
                    <a href="https://wa.me/6386239194" target="_blank"><i class="fa-brands fa-square-whatsapp text-light"></i></a>
                    <a href="https://github.com/OfficialAshutosh2412?tab=repositories" target="_blank"><i class="fa-brands fa-github text-light"></i></a>
                </div>
            </div>
        </div>
    </div>
    <%--faq--%>
    <div class="mt-3">
        <h3>Frequently Asked Questions...</h3>
        <div class="faq-grid">
            <asp:GridView ID="GridView1" runat="server" CssClass="border-0 w-100" AutoGenerateColumns="False" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" Width="637px">
        <Columns>
            <asp:TemplateField SortExpression="Question">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Question") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <div class=" p-3" style="border-bottom: 1px groove gray;">
                        <div class="w-100">
                            <strong>
                                <asp:Label Text="Q." runat="server" />
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("FaqId") %>'></asp:Label>: 
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Question") %>'></asp:Label>
                            </strong>
                        </div>
                        <div style="padding-left: 35px">
                            <strong>
                                <asp:Label Text="reply: " runat="server" /></strong>
                            <asp:Label ID="Label5" CssClass="p-3 " runat="server" Text='<%# Bind("Answer") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>
    </div>



    <script>
        //contact us validation
        function validateContact() {
            var cname = document.getElementById('<%= ContactName.ClientID %>').value;
            var cmail = document.getElementById('<%= ContactEmail.ClientID %>').value;
            var cnum = document.getElementById('<%= ContactNumber.ClientID %>').value;
            var cpur = document.getElementById('<%= ContactPurpose.ClientID %>').value;
            var cdet = document.getElementById('<%= ContactDetails.ClientID %>').value;
            if (cname == "" || cmail == "" || cnum == "" || cpur == "" || cdet == "") {
                alert("fields are empty !");
                return false;
            }
            else {
                return true;
            }
        } 
    </script>
</asp:Content>

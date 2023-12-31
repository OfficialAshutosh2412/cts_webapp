﻿<%@ Page Title="CTS | Home" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CriminalTrackingSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Faq] ORDER BY [FaqId], [Question], [Answer]"></asp:SqlDataSource>
    <%--hero--%>
    <div class="hero" id="hero">
        <div class="left">
            <img class="spin" src="dist/img/11(2).png" alt="animator" />
        </div>
        <div class="right">
            <h1><span class="title-vip" id="title-vip1">Criminal</span> Tracking System</h1>
            <p>CTS is an online portal to track crime records.</p>
            <small>Managed by State Police Department</small>
            <label><i class="fa-solid fa-phone"></i>+91-0522-112</label>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="send" NavigateUrl="~/Login.aspx">join us</asp:HyperLink>
        </div>
    </div>
    <div class="about-services">
        <%--about--%>
        <div class="about" id="about">
            <h1 class="section-title" id="section-title"><span class="title-vip" id="title-vip2"><i class="fa-solid fa-circle-info"></i>About</span> Us</h1>
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
                        <p>Enhanced tools for investigation, Centralized crime and criminal information repository along with the criminal images.<p>
                    </div>
                </div>
            </div>
        </div>
        <%--services--%>
        <div class="service-container" id="services">
            <h1 class="section-title"><span class="title-vip" id="title-vip3"><i class="fa-solid fa-cubes"></i>Our</span> Services</h1>
            <div class="services">
                <%--first--%>
                <div class="services-item">
                    <div>
                        <p>Missing Person Report</p>
                        <a href="/Login.aspx" class="cc-btn">visit</a>
                    </div>
                    <div class="hide">
                        <img src="dist/img/mr.jpg" alt="Missing person image" />
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
                            <img src="dist/img/mv.jpg" alt="missing valuable image" />
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
                        <img src="dist/img/cc.jpg" alt="crime complain image" />
                    </div>
                </div>
                <%--fourth--%>
                <div class="services-item">
                    <div>
                        <p>General Complain</p>
                        <a href="/Login.aspx" class="cc-btn">visit</a>
                    </div>
                    <div class="hide">
                        <img src="dist/img/gc.jpg" alt="general complain image" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--contact us--%>
    <div class=" min-width contact-us-container" >
        <h1 class="section-title"><span class="title-vip" id="title-vip4"><i class="fa-solid fa-message"></i>Give us</span> a message</h1>
        <div class="p-3 contact-us-container-form" id="contact">
            <div class=" d-flex">
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        <i class="fa-solid fa-pencil"></i>Name
                    </label>
                    <asp:TextBox ID="ContactName" runat="server" type="text" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        <i class="fa-solid fa-envelope"></i>Email
                    </label>
                    <asp:TextBox ID="ContactEmail" runat="server" type="email" class="cc-box "></asp:TextBox>
                </div>
                <div class="mb-1 w-100 p-2">
                    <label class="form-label">
                        <i class="fa-solid fa-phone"></i>Phone
                    </label>
                    <asp:TextBox ID="ContactNumber" runat="server" type="text" class="cc-box " MaxLength="13"></asp:TextBox>
                </div>
            </div>
            <div class="mb-1 w-100 p-2">
                <label class="form-label" for="purpose"><i class="fa-solid fa-question"></i>Purpose</label>
                <asp:TextBox ID="ContactPurpose" runat="server" class="cc-box "></asp:TextBox>
            </div>
            <div class="mb-1 p-2">
                <label class="form-label">
                    <i class="fa-solid fa-pen-nib"></i>Give Us Details
                </label>
                <asp:TextBox ID="ContactDetails" runat="server" TextMode="MultiLine" class="cc-box "></asp:TextBox>
            </div>
            <asp:Button ID="ContactBtn" runat="server" Text="submit details" class="send" OnClientClick="return validateContact()" OnClick="ContactBtn_Click" />

            <asp:Label ID="Label2" runat="server" ForeColor="#339933"></asp:Label>
        </div>
    </div>
    <%--member--%>
    <div class="member">
        <h1 class="section-title"><span class="title-vip" id="title-vip5"><i class="fa-solid fa-users"></i>Our</span> Team</h1>
        <div class="mentor" id="mentor">
            <div class="image">
                <img src="dist/img/mentor 1.jpg" />
            </div>
            <div class="image-data">
                <h1>Our Mentor</h1>
                <p><strong>Mr. Sushant Pathhak</strong> project mentor.</p>
                <small>Project Scientist at Remote Sensing Applications Centre Uttar Pradesh, Lucknow</small>
                <div class="member-link">
                    <a id="member-social1" href="https://www.facebook.com/engg.superpower" target="_blank"><i class="fa-brands fa-facebook-f"></i></a>
                    <a id="member-social2" href="https://www.instagram.com/scientistsushantpathak/" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a id="member-social3" href="https://www.indiamart.com/sunriseinfotechsolution/" target="_blank"><i class="fa-solid fa-cart-shopping"></i></a>
                    <a id="member-social4" href="http://www.sunriseinfotechsolution.com/Anonymous/Home.aspx" target="_blank"><i class="fa-solid fa-globe "></i></a>
                </div>
            </div>
        </div>
        <div class="mentor" id="developer">
            <div class="image">
                <img src="dist/img/developer.jpg" />
            </div>
            <div class="image-data">
                <h1>The Developer</h1>
                <p><strong>Mr. Ashutosh Prasad</strong> project developer.</p>
                <small>MCA graduate from AIET and a full stack developer on python & ASP.NET with MVC</small>
                <div class="member-link">
                    <a id="member-social5" href="https://www.facebook.com/ashutosh.prasad.754365/" target="_blank"><i class="fa-brands fa-facebook-f "></i></a>
                    <a id="member-social6" href="https://www.instagram.com/official.ashu.2000/" target="_blank"><i class="fa-brands fa-square-instagram "></i></a>
                    <a id="member-social7" href="https://twitter.com/Ashutos96662173" target="_blank"><i class="fa-brands fa-twitter "></i></a>
                    <a id="member-social8" href="https://wa.me/6386239194" target="_blank"><i class="fa-brands fa-square-whatsapp "></i></a>
                    <a id="member-social9" href="https://github.com/OfficialAshutosh2412?tab=repositories" target="_blank"><i class="fa-brands fa-github "></i></a>
                </div>
            </div>
        </div>
    </div>
    <%--other sites--%>
    <div class="other-sites">
        <div id="other-dark1">
            <asp:HyperLink NavigateUrl="https://pgportal.gov.in/" runat="server" Target="_blank">
                <img src="dist/img/cpgrams.png" />
            </asp:HyperLink>
        </div>
        <div id="other-dark2">
            <asp:HyperLink NavigateUrl="https://data.gov.in/" runat="server" Target="_blank"><img src="dist/img/data-gov.png" /></asp:HyperLink>
        </div>
        <div id="other-dark3">
            <asp:HyperLink NavigateUrl="https://www.g20.org/en/" runat="server" Target="_blank"><img src="dist/img/g20_logo.png" /></asp:HyperLink>
        </div>
        <div id="other-dark4">
            <asp:HyperLink NavigateUrl="https://www.india.gov.in/" runat="server" Target="_blank"> <img src="dist/img/india-gov.png" /></asp:HyperLink>
        </div>
        <div id="other-dark5">
            <asp:HyperLink NavigateUrl="https://www.nic.in/" runat="server" Target="_blank"><img src="dist/img/logo-nic-blue.png" /></asp:HyperLink>
        </div>
        <div id="other-dark6">
            <asp:HyperLink NavigateUrl="https://www.mygov.in/" runat="server" Target="_blank"><img src="dist/img/mygov.png" /></asp:HyperLink>
        </div>
    </div>
    <%--faq--%>
    <div class=" bg-light" id="faq">
        <h3><i class="fa-solid fa-file-circle-question"></i>Frequently Asked Questions...</h3>
        <div class="faq-grid">
            <asp:GridView ID="GridView1" runat="server" CssClass="border-0 w-100 bg-light" AutoGenerateColumns="False" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" Width="637px">
                <Columns>
                    <asp:TemplateField SortExpression="Question">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Question") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <itemtemplate>
                            <div class=" p-3" style="border-bottom: 1px groove gray;">
                                <div class="w-100">
                                    <strong>
                                        <asp:Label Text="Q." runat="server" />
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("FaqId") %>'></asp:Label>
                                        : 
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Question") %>'></asp:Label>
                                    </strong>
                                </div>
                                <div style="padding-left: 35px">
                                    <strong>
                                        <asp:Label Text="reply: " runat="server" />
                                    </strong>
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

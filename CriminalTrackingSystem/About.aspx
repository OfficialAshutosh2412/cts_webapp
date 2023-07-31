<%@ Page Title="CTS | About Us" Language="C#" MasterPageFile="~/LandingLayout.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CriminalTrackingSystem.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <%--introduction--%>
        <div class="hero">
            <img src="dist/img/cts_logo.png" class="img-fluid figure-img" />
            <div>
                <h1 class=" text-capitalize">Know about us...</h1>
                <p class="text-left">
                    CTS stands for <strong>" CRIMINAL TRACKING SYSTEM"</strong>,
                    which is a online crime reporting platform. Anyone can report us any crime 
                    anytime from anywhere.
                </p>
                <div class="joinus"><a class="nav-link btn bg-danger w-25 text-white p-1" href="Signup.aspx">Join us</a></div>
            </div>
        </div>
        <%--accordion--%>
        <div class="w-75 m-auto ">
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <h3 class=" fw-semibold">What is our mission ?</h3>
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <p style="text-align:justify;font-size:1.2em">
                                Criminal Tracking Systems (CTS) is a Mission Mode
                                Project under the National e-Governance Plan (NeGP) of the Indian Government
                                . It has been conceptualized with the aim of creating a comprehensive and 
                                integrated system for enhancing the efficiency and effectiveness of 
                                policing through the principle of e-Governance. Moreover, it seeks the 
                                creation of nationwide networking infrastructure for the evolution of 
                                IT-enabled state-of-the-art tracking system around ‘Investigation of 
                                crime and detection of criminals.’ This article covers the legal system 
                                in detail.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h3 class=" fw-semibold">Scope of Implementation</h3>
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <p style="text-align:justify;font-size:1.2em">
                                The project would be implemented in line with the NeGP principle of 
                                “centralized planning and de-centralized implementation”. The Ministry of Home
                                Affairs (MHA) and other designated bodies would be engaged in the planning 
                                process, collaborating with the Police leadership within States, developing 
                                a few core components, and in monitoring and reviewing the initiative. The 
                                States and Union territories would be driving the planning and implementation 
                                at the State level.
                                <br />
                                The striking feature of CCTNS implementation at the State level is the “bundling
                                of services” concept, according to which each of the states selects one System
                                Integrator (SI), who would be the single point of contact for the State for all
                                the components of CCTNS. These components include the application, hardware, 
                                communications infrastructure, associated services such as Capacity Building 
                                and Handholding, etc.

                            </p>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h3 class=" fw-semibold">Ministry of Home Affairs</h3>
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <ul style="text-align:justify;font-size:1.2em">
                                <li>Standardized means of capturing crime and criminal data across India’s police stations</li>
                                <li>Faster and easier access to crime information across the country in a way that is agreeable to trend and pattern analysis.</li>
                                <li>Enhanced ability to identify crime patterns through modus operandi across the States/UTs, and communication of the same to the state police departments for aiding crime prevention.</li>
                                <li>The ability to provide a speedy response, with greater accuracy to inquiries from the parliament, citizens and citizen groups; and to RTI queries.</li>
                                <li>Easy and cost-efficient scalability of crime and criminal systems in the long run.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                            <h3 class=" fw-semibold">Police Department</h3>
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <ul style="text-align:justify;font-size:1.2em">

                                <li>Enhanced tools for investigation.</li>
                                <li>Repository for Centralized crime and criminal investigation, along with criminal images and imprints with advanced search capabilities.</li>
                                <li>Improved ability to analyze crime patterns and/or modus operandi.</li>
                                <li> Improved ability to analyze road incidents and other accidents.</li>
                                <li>Quicker turnaround time for the analysis results (criminal and traffic) to reach the field officers.</li>
                                <li>Reduced workload for the back-office activities of the police stations such as preparation of regular and ad-hoc reports, along with station records management.</li>
                                <li>A collaborative knowledge-oriented environment where knowledge is disseminated across various regions and units.</li>
                                <li>Improved coordination and communication with external stakeholders through the implementation of electronic information exchange systems.</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

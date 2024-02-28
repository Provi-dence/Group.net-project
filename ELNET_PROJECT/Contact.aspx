<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ELNET_PROJECT.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="contact-section py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto text-center">
                    <h2 class="section-heading mb-5">Contact Us</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card shadow">
                        <div class="card-body">
                            <p class="lead mb-4">Feel free to reach out to us with any questions or feedback. We would love to hear from you!</p>
                            <ul class="list-unstyled">
                                <li class="mb-3"><i class="fas fa-map-marker-alt fa-fw me-3"></i> One Microsoft Way, Redmond, WA 98052-6399</li>
                                <li class="mb-3"><i class="fas fa-phone fa-fw me-3"></i> 425.555.0100</li>
                                <li class="mb-3"><i class="fas fa-envelope fa-fw me-3"></i> <a href="mailto:support@example.com">support@example.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mx-auto">
                    <div class="card shadow">
                        <div class="card-body">
                            <form id="contactForm" name="sentMessage" novalidate="novalidate">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="name" type="text" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name." />
                                    <label for="name">Your Name *</label>
                                    <div class="invalid-feedback">Please enter your name.</div>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="email" type="email" placeholder="Your Email Address" required="required" data-validation-required-message="Please enter your email address." />
                                    <label for="email">Your Email Address *</label>
                                    <div class="invalid-feedback">Please enter a valid email address.</div>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" id="message" placeholder="Your Message" style="height: 10rem" required="required" data-validation-required-message="Please enter a message."></textarea>
                                    <label for="message">Your Message *</label>
                                    <div class="invalid-feedback">Please enter your message.</div>
                                </div>
                                <div class="text-center">
                                    <button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Send Message</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

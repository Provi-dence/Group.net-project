<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ELNET_PROJECT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container-fluid"> <!-- Use container-fluid class -->
    <div class="mt-3"> <!-- Add padding to the carousel -->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="5000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="images/carousel1_namo.png" alt="First slide" style="max-height: 500px;">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/carousel2_namo.png" alt="Second slide" style="max-height: 500px;">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/carousel3_namo.png" alt="Third slide" style="max-height: 500px;">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/carousel4_namo.png" alt="Fourth Slide" style="max-height: 500px;">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Services Section -->
        <div style="background-color:white; padding: 4px; margin-top: 4px;"> <!-- Add a div with gray background and padding -->
    <div class="row mt-5">
        <div class="col text-center">
            <h2><b>SERVICES</b></h2>
            <p><b>RunWithMe supports athletes, racers and events in creating their ultimate sports experience.</b></p>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col text-center">
            <img src="images/store.png" alt="Service 3 Icon" style="width: 70px;">
            <p></p>
            <p>SHOP RACE MANAGEMENT</p>
        </div>
        <div class="col text-center">
            <img src="images/online-registration.png" alt="Service 4 Icon" style="width: 70px;">
            <p></p>
            <p>ONLINE REGISTRATION</p>
        </div>
        <div class="col text-center">
            <img src="images/instagram-live.png" alt="Service 4 Icon" style="width: 70px;">
            <p></p>
            <p>LIVE STREAMING</p>
        </div>
    </div>
</div>

        <div style="background-color:darkgray; padding: 4px; margin-top: 4px;">
        <div class="py-5">
    <div class="col text-center">
        <h2>EVENT CATEGORIES</h2>
        <br />
        <br />
    </div>
            </div>
  <div class="row justify-content-center"> <!-- Align the categories horizontally -->
    <div class="col-md-3 text-center mb-3">
        <a href="Running.aspx" style="text-decoration: none; color: blueviolet;">
            <img src="images/run-icon.png" alt="Running Icon" style="max-width: 50px;"><br>
            RUNNING
        </a>
    </div>
    <div class="col-md-3 text-center mb-3">
        <a href="Biking.aspx" style="text-decoration: none; color: blueviolet;">
            <img src="images/bike-icon.png" alt="Bike Icon" style="max-width: 50px;"><br>
            BIKE
        </a>
    </div>
    <div class="col-md-3 text-center mb-3">
        <a href="Swim.aspx" style="text-decoration: none; color: blueviolet;">
            <img src="images/swim-icon.png" alt="Swim Icon" style="max-width: 50px;"><br>
            SWIM
        </a>
    </div>
    <div class="col-md-3 text-center mb-3">
        <a href="Ultramarathon.aspx" style="text-decoration: none; color: blueviolet;">
            <img src="images/ultramarathon-icon.png" alt="Ultramarathon Icon" style="max-width: 50px;"><br>
            ULTRAMARATHON
        </a>
    </div>
</div>


    </div>
    </div>
    </div>
</asp:Content>

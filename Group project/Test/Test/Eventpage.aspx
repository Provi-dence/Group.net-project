<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eventpage.aspx.cs" Inherits="Test.Eventpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <!--Flaty style-->
    <link rel="stylesheet" href="style.css" />

    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="css/bootstrap-utilities.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.rtl.css" rel="stylesheet" />
</head>
<body>
    <header style="z-index: 2 ">
        <ul class="nav justify-content-center">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Active</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
        </ul>
    </header>
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="Images/background.jpg" class="d-block w-100" alt="First image"/>
        </div>
        <div class="carousel-item">
          <img src="Images/background.jpg" class="d-block w-100" alt="Second image"/>
        </div>
        <div class="carousel-item">
          <img src="Images/background.jpg" class="d-block w-100" alt="Third image"/>
        </div>
      </div>
    </div>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.esm.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>

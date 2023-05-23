<!doctype html>
<html lang="en">

<head>
  <title>TMS Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/style.css">
  <style>
    .img {
      background-image: url(images/bg.jpg);
    }

    .login-form {
      display: block;
    }

    .registration-form {
      display: none;
    }

    .make-pointer {
      cursor: pointer;
    }

    .sec {
      padding-top: 5%;
    
  </style>
</head>
<!-- <body class="img js-fullheight"> -->

<body class="img js-fullheight" id="body">
  <!-- <section class="ftco-section"> -->
  <section class="sec">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 text-center mb-5">
          <h2 class="heading-section">Login to CARKA PEEK</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
          <div class="login-wrap p-0">
            <h3 class="mb-4 text-center" id="top-message">Have an account?</h3>




            <form action="loginservlet" class="signin-form login-form" method="post" id="loginform">
              <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required>
              </div>
              <div class="form-group">
                <input id="password-field-1" name="password" type="password" class="form-control" placeholder="Password"
                  required>
                <!-- <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span> -->
              </div>
              <div class="form-group">
                <button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
              </div>
              <div class="form-group d-md-flex">
                <div class="w-50 text-md-left">
                  <p><span class="make-pointer" onclick="changeForm()">Create Account</span></p>
                </div>
                <div class="w-50 text-md-right">
                  <a href="#" style="color: #fff">Forgot Password</a>
                </div>
              </div>
              <div>
                <p>${requestScope['message'] }</p>
              </div>
            </form>



            <form action="registrationservlet" class="signin-form registration-form" method="post"
              id="registrationform">
              <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="Name" required>
              </div>
              <div class="form-group">
                <input type="text" name="email" class="form-control" placeholder="Registered Email" required>
              </div>
              
              <div class="form-group">
                <button type="submit" class="form-control btn btn-primary submit px-3">Inquiry for Details</button>
              </div>
              <div class="form-group d-md-flex">
                <div class="w-50 text-md-left">
                  <p><span class="make-pointer" onclick="changeForm()">Login to existing account</span></p>
                </div>
                <div class="w-50 text-md-right">
                </div>
              </div>
              <div>
                <p>${requestScope['message'] }</p>
              </div>
            </form>





            <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
            <div class="social d-flex text-center">
              <a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span>Facebook</a>
              <a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span>Twitter</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/popper.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>

</body>

</html>

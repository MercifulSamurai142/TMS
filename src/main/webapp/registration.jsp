<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>registration</title>
  <style>
    .form{
      width: 50%;
      margin-left: 25%;
      margin-top: 5%;
    }
  </style>
</head>

<body>
  <div class="form">
    <form action="registrationservlet" method="post" id="registrationform">
      <div class="form-floating mb-3">
        <input type="text" class="form-control" id="floatingInput1" placeholder="Name" name="name">
        <label for="floatingInput1">Full Name</label>
      </div>

      <div class="form-floating mb-3">
        <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
        <label for="floatingInput">Email address</label>
      </div>

      <div class="form-floating mb-3">
        <input type="text" class="form-control" id="floatingInput3" placeholder="number" name="phone">
            <label for="floatingInput3">Phone Number</label>
      </div>

      <div class="form-floating mb-3 row g-2">
        <div class="col-md">
          <div class="form-floating">
            <select class="form-select" id="floatingSelectGrid4" aria-label="Floating label select example" name="type">
              <option value="E" selected>Employee</option>
              <option value="S">Secretary</option>
            </select>
            <label for="floatingSelectGrid4">Employment Type</label>
          </div>
        </div>
        <div class="col-md">
          <div class="form-floating">
            <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example" name="gender">
              <option value="N" selected>None</option>
              <option value="M">Male</option>
              <option value="F">Female</option>
            </select>
            <label for="floatingSelectGrid">Gender</label>
          </div>
        </div>
      </div>

      <div class="form-floating mb-3 row g-2 col-md">
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>

    </form>
    <div>
  		<p>${requestScope['message'] }</p>
  	</div>
  </div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
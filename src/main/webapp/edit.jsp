<%@page import="bean.Credentials"%>
<%@page import="servlet.EditServlet"%>
<%@page import="servlet.RegistrationServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/account_details_style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="css/account_details_style.css">
    <title>Account Details</title>
</head>
<%
Credentials crds= Credentials.getCrds();
%>
<body>

	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="edit.jsp">Profile</a>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="schedule.jsp">Schedule</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

	<div class="display-form" id="display-form">
        <div class="container rounded bg-info mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <img class="rounded-circle mt-5" width="150px"
                            src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"
                            alt="">
                        <span class="font-weight-bold">UID</span>
                        <span class="font-weight-bold"><% out.println(crds.getUid()); %></span>
                        <span> </span>
                    </div>
                </div>
                <div class="col-md-8 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Details</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <label class="labels">Full Name</label>
                                <input type="text" class="form-control" placeholder="full name" value="<% out.println(crds.getName()); %>" readonly>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels">Mobile Number</label>
                                <input type="text" class="form-control" placeholder="enter phone number" value="<% out.println(crds.getPhone()); %>" readonly>
                            </div>

                            <div class="col-md-12">
                                <label class="labels">Email ID</label>
                                <input type="text" class="form-control" placeholder="enter email id" value="<% out.println(crds.getEmail()); %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Birthday</label>
                                <input type="date" class="form-control" placeholder="birthday" value=<%out.println(crds.getDate()); %> readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Gender</label>
                                <input type="text" class="form-control" placeholder="gender" value="<% out.println(crds.getGender()); %>" readonly>
                            </div>

                        </div>

                        <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button edit-button" type="button" id="edit-button">Edit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <form action="editservlet" class="edit-form" id="edit-form" method="post" >
        <div class="container rounded bg-info mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <img class="rounded-circle mt-5" width="150px"
                            src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"
                            alt="">
                        <span class="font-weight-bold">UID</span>
                        <span class="font-weight-bold"><% out.println(crds.getUid()); %></span>
                        <span> </span>
                    </div>
                </div>
                <div class="col-md-8 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Details</h4>
                        </div>
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <label class="labels">Full Name</label>
                                <input type="text" class="form-control" placeholder="full name" value="<% out.println(crds.getName()); %>" name="name">
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels">Mobile Number</label>
                                <input type="text" class="form-control" placeholder="enter phone number" value="<% out.println(crds.getPhone()); %>" name="number">
                            </div>

                            <div class="col-md-12">
                                <label class="labels">Email ID</label>
                                <input type="text" class="form-control" placeholder="enter email id" value="<% out.println(crds.getEmail()); %>" name="email">
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Birthday</label>
                                <input type="date" class="form-control" placeholder="birthday" value=<% out.println(crds.getDate()); %> name="birthday">
                            </div>
                            <div class="col-md-6">
                                <label class="labels">Gender</label>
                                <input type="text" class="form-control" placeholder="gender" value="<% out.println(crds.getGender()); %>" name="gender">
                            </div>

                        </div>

                        <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button save-button" type="submit" id="save-button">Save Profile</button>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/accountDetails.js"></script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>schedule</title>
    <style>
        .btn-sm {
            border-radius: 0%;
        }
    </style>
</head>

<body class="bg-secondary">

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

    <div class="container my-xl-5">
        <form action="dateservlet" method="post">
            <div class="row g-3 justify-content-md-center">
                <div class="col-md-2">
                    <input type="date" class="form-control" placeholder="date" value="${requestScope['date']}" id="selectdate" name="selectdate">
                </div>
                <button type="submit" class="btn btn-primary col-md-2 border-1 border-info">Submit</button>
            </div>
        </form>
    </div>
    
    
    <div class="container bg-info my-5">
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 "> TIME </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 "> PURPOSE </div>
            <div class="text-center border-start border-bottom border-dark col-md-2 "> PRIORITY </div>
            <div class="text-center border-start border-bottom border-dark col-md-1 "> EDIT </div>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot0"> 10:00&#8209;11:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose0">${requestScope['purpose0']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority0">${requestScope['priority0']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(0)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot1"> 11:00&#8209;12:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose1">${requestScope['purpose1']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority1">${requestScope['priority1']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(1)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot2"> 12:00&#8209;13:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose2">${requestScope['purpose2']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority2">${requestScope['priority2']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(2)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot3"> 13:00&#8209;14:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose3">${requestScope['purpose3']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority3">${requestScope['priority3']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(3)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot4"> 14:00&#8209;15:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose4">${requestScope['purpose4']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority4">${requestScope['priority4']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(4)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot5"> 15:00&#8209;16:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose5">${requestScope['purpose5']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority5">${requestScope['priority5']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(5)">Select</button>
        </div>
        <div class="row row-cols-4">
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="slot6"> 16:00&#8209;17:00 </div>
            <div class="text-center border-start border-bottom border-dark col-md-7 " id="purpose6">${requestScope['purpose6']}</div>
            <div class="text-center border-start border-bottom border-dark col-md-2 " id="priority6">${requestScope['priority6']}</div>
            <button type="button" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1" onclick="select(6)">Select</button>
        </div>
    </div>
    <div class="container bg-info my-5">
        <form action="detailservlet" method="post" style="display: none;" id="form">
            <div class="row row-cols-4">
                <div class="text-center border-start border-bottom border-dark col-md-2 "> TIME </div>
                <div class="text-center border-start border-bottom border-dark col-md-7 "> PURPOSE </div>
                <div class="text-center border-start border-bottom border-dark col-md-2 "> PRIORITY </div>
                <div class="text-center border-start border-bottom border-dark col-md-1 "> EDIT </div>
                <div class="text-center border-start border-bottom border-dark col-md-2 "> <span id="slot"></span> <input value="1" class="d-none" type="number"  id="slotvalue" name="slotvalue"> </div>
                <div class="text-center border-start border-bottom border-dark col-md-7 "><input type="text" class="form-control bg-transparent" placeholder="Enter purpose" id="purpose" name="purpose"></div>
                <div class="text-center border-start border-bottom border-dark col-md-2 ">
                    <select class="form-select bg-transparent" id="priority" name="priority">
                        <option value="H">HIGH</option>
                        <option value="M">MEDIUM</option>
                        <option selected value="L">LOW</option>
                    </select>
                </div>
                <input type="date" disabled class="form-control d-none" placeholder="date" aria-label="" value="" id="editdate" >
                <button type="submit" class="btn btn-sm btn-primary border-2 btn-outline-dark col-md-1">Change</button>
            </div>
        </form>
    </div>
    <script type="text/javascript" src="js/schedule.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
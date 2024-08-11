<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Ebook List</title>
  </head>
  <style>
  body{
  background-image: url("Green  board.png");
  background-size: cover;
  }
  .table{
  width:50%;
  margin: 50px auto;
  }
  h1{
  text-align:center;
  color:white;
  }
  thead.thead {
  background-color: #fff;
  color:Black;
}
td{
color:white;
}

  
  </style>
  <body>
    
<div class="container table-responsive py-5"> 
  <table class="table table-bordered table-hover">
  <h1>EBOOK LIST</h1>
    <thead class="thead">
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Publisher Name</th>
        <th scope="col">Description</th>
        <th scope="col">File_Name</th>
        
        <th scope="col">Action</th>
      </tr>
    </thead>
    <c:forEach items="${ebooklist}" var="e">
    <tbody>
      <tr>
        <td scope="row">${e.id}</td>
        <td scope="row">${e.name}</td>
        <td>${e.pname}</td>
        <td>${e.desc}</td>
        <td>${e.filename}</td>
        <td>
        <a href="downloadebook?name=${e.filename}"><i class="fa fa-download" style="font-size:30px;color:gold"></i></a>
        </td>
      </tr>
      
    </tbody>
    </c:forEach>
  </table>
  </div>
  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
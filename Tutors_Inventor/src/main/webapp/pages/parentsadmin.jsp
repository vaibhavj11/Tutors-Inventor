<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Responsive Admin Dashboard | Korsat X Parmaga</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-/rQLNjKtV+a41jKgjXn2n4c3qH3wZwMG0ZiK41RpeSjk00GpdkLgjJzXpFr5d5/ZD1F2KU1/M6Zh16Z6Uc+b6Q=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/5.5.2/css/ionicons.min.css"
    integrity="sha512-T56D0Cx/DhWdtt/9j0z+P0JHvN8h3aKtsSKwNfTG5U6v5UWEL+o6YKj6C5DJ29Av0nIz/zfiE5iZmz++xU8WkA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
  <!-- ======= Styles ====== -->
  <style>
    /* =========== Google Fonts ============ */
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap");

    /* =============== Globals ============== */
    * {
      font-family: "Ubuntu", sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --blue: #2a2185;
      --white: #fff;
      --gray: #f5f5f5;
      --black1: #222;
      --black2: #999;
    }

    body {
      min-height: 100vh;
      overflow-x: hidden;
      background-image: url('path/to/your/image.jpg');
      background-repeat: no-repeat;
      background-size: cover;

    }

    .container {
      position: relative;
      width: 100%;
    }

    /* =============== Navigation ================ */
    .navigation {
      position: fixed;
      width: 300px;
      height: 100%;
      background: var(--blue);
      border-left: 10px solid var(--blue);
      transition: 0.5s;
      overflow: hidden;
    }

    .navigation.active {
      width: 80px;
    }

    .navigation ul {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
    }

    .navigation ul li {
      position: relative;
      width: 100%;
      list-style: none;
      border-top-left-radius: 30px;
      border-bottom-left-radius: 30px;
    }

    .navigation ul li:hover,
    .navigation ul li.hovered {
      background-color: var(--white);
    }

    .navigation ul li:nth-child(1) {
      margin-bottom: 40px;
      pointer-events: none;
    }

    .navigation ul li a {
      position: relative;
      display: block;
      width: 100%;
      display: flex;
      text-decoration: none;
      color: var(--white);
    }

    .navigation ul li:hover a,
    .navigation ul li.hovered a {
      color: var(--blue);
    }

    .navigation ul li a .icon {
      position: relative;
      display: block;
      min-width: 60px;
      height: 60px;
      line-height: 75px;
      text-align: center;
    }

    .navigation ul li a .icon ion-icon {
      font-size: 1.75rem;
    }

    .navigation ul li a .title {
      position: relative;
      display: block;
      padding: 0 10px;
      height: 60px;
      line-height: 60px;
      text-align: start;
      white-space: nowrap;
    }

    /* --------- curve outside ---------- */


    /* ===================== Main ===================== */
    .main {
      position: absolute;
      width: calc(100% - 300px);
      left: 300px;
      min-height: 100vh;
      background: url("Green\ \ board.png");
      transition: 0.5s;
      display: flex;
      flex-direction: column;
      align-items: center;

    }

    .main.active {
      width: calc(100% - 80px);
      left: 80px;
    }

    .topbar {
      width: 100%;
      height: 60px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 0 10px;
      color: white;
    }

    .toggle {
      position: relative;
      width: 60px;
      height: 60px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 2.5rem;
      cursor: pointer;
    }



    .user {
      display: flex;
      align-items: center;
      position: relative;
      margin-right: 50px;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      cursor: pointer;
      text-decoration: none;
      /* remove underline from anchor tag */
    }

    .user span {
      margin-right: 10px;
      /* add some space between the text and the icon */
    }

    /* Active nav item styles */
    .navigation li.active a {
      color: yellow;
    }


    .navigation li.active::before {
      content: "";
      display: block;
      position: absolute;
      bottom: 0;
      left: 0;
      width: 4px;
      height: 100%;
      background-color: transperent;
    }

    /* ===================== Main Body ===================== */



    
    

    h1 {
      font-size: 30px;
      margin-top: 30px;
      margin-bottom: 30px;
      text-transform: uppercase;
      letter-spacing: 3px;
      color: gold;
      margin-right: -20px;

    }

    
 


 /*  */

h2 {
  color: white;
}

.centered-table {
  text-align: center;
}

.my-table {
  border-collapse: collapse;
  margin: 50px auto;
  box-sizing: border-box;
}

.my-table td, .my-table th {
  padding: 10px;
  border-left: 1px solid white;
  border-right: 1px solid white;
  border-top: 1px solid white;
  border-bottom: 1px solid white;
  color: white;
}

.my-table th {
  border-right: 1px solid black;
  border-bottom: 1px solid black;
  background-color: white;
  color:black;
}

@media only screen and (min-width: 768px) and (max-width: 1350px) {
  .my-table {
    margin: 30px auto; /* reduce margin to adjust for smaller screens */
    font-size: 10px; /* reduce font size for smaller screens */
  }
  .my-table td, .my-table th {
    padding: 8px; /* reduce padding for smaller screens */
  }
}




@media only screen and (max-width: 768px) {
  /* adjust table styling for screens smaller than 768px (i.e. tablet and mobile devices) */
  .my-table {
    width: 100%; /* make table fill width of screen */
  }

  .my-table td {
    display: block; /* make table cells display as blocks */
    text-align: center; /* center text in table cells */
    border: none; /* remove borders */
  }

  .my-table td:first-child {
    border-top: 1px solid white; /* add top border to first row of cells */
  }

  .my-table td:last-child {
    border-bottom: 1px solid white; /* add bottom border to last row of cells */
  }

  .my-table td:not(:last-child) {
    border-right: none; /* remove right border from all but the last column of cells */
  }

  .my-table th {
    display: none; /* hide table headers */
  }
}





















    /* ====================== Responsive Design ========================== */
    @media (max-width: 991px) {
      .navigation {
        left: -300px;
      }

      .navigation.active {
        width: 300px;
        left: 0;
      }

      .main {
        width: 100%;
        left: 0;
      }

      .main.active {
        left: 300px;
      }
    }

    @media (max-width: 768px) {
      .user {
        min-width: 40px;
        margin-right: 0;
      }
      
    }

    @media (max-width: 480px) {

      .user {
        min-width: 40px;
        margin-right: 0;
      }

      .navigation {
        width: 100%;
        left: -100%;
        z-index: 1000;
      }

      .navigation.active {
        width: 100%;
        left: 0;
      }

      .toggle {
        z-index: 10001;
      }

      .main.active .toggle {
        color: #fff;
        position: fixed;
        right: 0;
        left: initial;
      }

      h1 {
        font-size: 20px;
      }

    }

    @media (max-width: 360px) {
      h1 {
        font-size: 10px;
      }
    }
  </style>
</head>

<body>
  <!-- =============== Navigation ================ -->
  <div class="container">
    <div class="navigation">
      <ul>
        <li>
          <a href="#">
            <span class="icon">

            </span>
            <span class="title">Tutor Inventor</span>
          </a>
        </li>

        <li>
          <a href="admindash">
            <span class="icon">
              <ion-icon name="home-outline"></ion-icon>
            </span>
            <span class="title">Dashboard</span>
          </a>
        </li>

        <li>
          <a href="tutoradmin">
            <span class="icon">
              <ion-icon name="people-outline"></ion-icon>
            </span>
            <span class="title">Tutors</span>
          </a>
        </li>

        <li class="active">
          <a href="parentsadmin">
            <span class="icon">
              <ion-icon name="people-outline"></ion-icon>
            </span>
            <span class="title">Parents</span>
          </a>
        </li>

        <li>
          <a href="addebook">
            <span class="icon">
              <ion-icon name="book-outline"></ion-icon>
            </span>
            <span class="title">Ebooks</span>
          </a>
        </li>

        

        <li>
          <a href="/adminlogout">
            <span class="icon">
              <ion-icon name="log-out-outline"></ion-icon>
            </span>
            <span class="title">Sign Out</span>
          </a>
        </li>
      </ul>
    </div>
  </div>

  <!-- ========================= Main ==================== -->
  <div class="main">
    <div class="topbar">
      <div class="toggle">
        <ion-icon name="menu-outline"></ion-icon>
      </div>

      <h1>Admin Dashboard</h1>

      <a class="user">
        <ion-icon name="person"></ion-icon>
        <span>Admin</span>
      </a>
    </div>

    <!-- ======================= Cards ================== -->
    <h2>Parent List</h2>
   <div class="centered-table">
  <table class="my-table">
    <thead>
      <tr>
         <th>First Name </th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Mobile</th>
          <th>State</th>
          <th>City</th>
          <th>Area</th>
          <th>Zip</th>
          <th>Action</th>
      </tr>
    </thead>
    <c:forEach items="${parent}" var="e">
    <tbody>
      <tr>
       <td>${e.fname}</td>
          <td>${e.lname}</td>
          <td>${e.email}</td>
          <td>${e.mobile}</td>
          <td>${e.state}</td>
          <td>${e.city}</td>
          <td>${e.area}</td>
          <td>${e.zip}</td>
          <td>
          <a href="editparent?id=${e.id}"><i class='fa fa-edit' style="color:gold"></i></a> |
          <a href="deleteparent?id=${e.id}"><i class="fa fa-trash" style="color:gold"></i></a>
          </td>
        
      </tr>
      
    </tbody>
    </c:forEach>
  </table>
</div>

  </div>







  <!-- =========== Scripts =========  -->
  <script src="assets/js/main.js"></script>

  <!-- ====== ionicons ======= -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


  <!-- JavaScript -->
  <script>
    // add active class to selected list item
    let list = document.querySelectorAll(".navigation li");

    function activateLink() {
      list.forEach((item) => {
        item.classList.remove("active");
      });
      this.classList.add("active");
    }

    list.forEach((item) => item.addEventListener("click", activateLink));


    // Menu Toggle
    let toggle = document.querySelector(".toggle");
    let navigation = document.querySelector(".navigation");
    let main = document.querySelector(".main");

    toggle.onclick = function () {
      navigation.classList.toggle("active");
      main.classList.toggle("active");
    };
  </script>

</body>

</html>
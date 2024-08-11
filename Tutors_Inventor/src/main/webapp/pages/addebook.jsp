<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard Tutor Inventor</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    integrity="sha512-/rQLNjKtV+a41jKgjXn2n4c3qH3wZwMG0ZiK41RpeSjk00GpdkLgjJzXpFr5d5/ZD1F2KU1/M6Zh16Z6Uc+b6Q=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/5.5.2/css/ionicons.min.css"
    integrity="sha512-T56D0Cx/DhWdtt/9j0z+P0JHvN8h3aKtsSKwNfTG5U6v5UWEL+o6YKj6C5DJ29Av0nIz/zfiE5iZmz++xU8WkA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
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
 color:yellow;
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



    .dashboard {
      background-color: transparent;
      padding: 20px;
      text-align: center;
      border-radius: 5px;
      max-width: 600px;
      margin: 0 auto;
      margin-top: 10px;

    }

    h1 {
      font-size: 30px;
      margin-top: 30px;
      margin-bottom: 30px;
      text-transform: uppercase;
      letter-spacing: 3px;
      color: gold;
      margin-right: -20px;

    }

    .button-container {

      display: flex;
      flex-direction: row;
      align-items: center;
      flex-wrap: wrap;
      justify-content: center;
      margin-right: auto;
    }

    .button {
      display: inline-block;
      padding: 12px 24px;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      font-size: 20px;
      margin: 10px;
      transition: all 0.3s ease;
      margin-top: 0px;
    }

    .button:hover {
      transform: translateY(-3px);
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    }

    .tutor {
      background-color: #007bff;
    }

    .parent {
      background-color: #28a745;
    }

    .ebook {
      background-color: #28a745;
    }

    .button-container {
      margin-top: 20px;
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      animation-duration: 2s;
      animation-name: dropin;
      animation-iteration-count: 1;
    }

    @keyframes dropin {
      0% {
        transform: translateY(-100%);
        opacity: 0;
      }

      100% {
        transform: translateY(0);
        opacity: 1;
      }
    }

    .numbers {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
  margin: 80px auto;
  max-width: 800px;
}

.count-tutors, .count-parents, .count-ebooks {
  flex: 1;
  background-color: #f8f9fa;
  border-radius: 5px;
  padding: 20px;
  text-align: center;
  margin: 0 0px 20px;
}

.count-tutors {
  border: 2px solid black;
}

.count-parents {
  border: 2px solid black;
}

.count-ebooks {
  border: 2px solid black;
}

.count-tutors h2, .count-parents h2, .count-ebooks h2 {
  margin: 0;
  font-size: 24px;
  font-weight: bold;
}
/*  */

.ebookform {
  max-width: 300px;
  margin: 0 auto;
  padding: 20px;
 
}

.ebookform input[type="text"],
.ebookform input[type="url"],
.ebookform input[type="file"],
.ebookform textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 20px;
  box-sizing: border-box;
  font-size: 16px;
}
.ebookform input[type="file"]{
color:white;
}

.ebookform input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
}


.ebookform input[type="submit"]:hover {
  background-color: #3e8e41;
}
/* For screens smaller than 361px */
@media screen and (max-width: 360px) {
  .ebookform {
    max-width: 300px;
    padding: 10px;
  }
  .ebookform input[type="submit"] {
    font-size: 14px;
  }
}

/* For screens between 361px and 468px */
@media screen and (min-width: 361px) and (max-width: 468px) {
  .ebookform {
    max-width: 400px;
    padding: 15px;
  }
  .ebookform input[type="submit"] {
    font-size: 16px;
  }
}

/* For screens between 469px and 760px */
@media screen and (min-width: 469px) and (max-width: 760px) {
  .ebookform {
    max-width: 500px;
    padding: 20px;
  }
}

/* For screens larger than 761px */
@media screen and (max-width: 761px) {
  .ebookform {
    max-width: 600px;
    padding: 20px;
  }
}




















    /* ====================== Responsive Design ========================== */
    @media (max-width: 991px) {
      .navigation {
        left: -300px;
      }

      .navigation.active {
        width:300px;
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

        <li >
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

        <li>
          <a href="parentsadmin">
            <span class="icon">
              <ion-icon name="people-outline"></ion-icon>
            </span>
            <span class="title">Parents</span>
          </a>
        </li>

        <li class="active" >
          <a href="addebook">
            <span class="icon">
              <ion-icon name="book-outline"></ion-icon>
            </span>
            <span class="title">Ebooks</span>
          </a>
        </li>

        

        <li>
          <a href="admin">
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
      <div class="dashboard">
        <div class="button-container">
          <a href="tutoradmin" class="button tutor">Tutor</a>
          <a href="parentsadmin" class="button parent">Parent</a>
          <a href="addebook" class="button ebook">Ebook</a>
        </div>
        <h2 style="color:White; margin:10px;">Add Ebook</h2>
        
        <form action="upload" method="post" class="ebookform" enctype="multipart/form-data">
    <input type="text" name="name" placeholder="Enter Ebook Name"><br>
    <input type="text" name="pname" placeholder="Enter Ebook Publisher Name"><br>
    <input type="text" name="desc" placeholder="Enter Ebook Description"><br>
    <input type="file" name="file"><br>
    <input type="submit" value="Upload">
</form>
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
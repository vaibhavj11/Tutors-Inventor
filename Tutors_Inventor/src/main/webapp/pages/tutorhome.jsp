<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Tutor Home</title>
    <style>
        .header-blue {
            background-image: url("Green\ \ board.png");
            background-size: cover;
            padding-bottom: 80px;
            font-family: 'Source Sans Pro', sans-serif;
        }

        @media (min-width :768px) {
            .header-blue {
                padding-bottom: 120px;
            }
        }

        .header-blue .navbar {
            background: transparent;
            padding-top: .75rem;
            padding-bottom: .75rem;
            color: #fff;
            border-radius: 0;
            box-shadow: none;
            border: none;
        }

        @media (min-width :768px) {
            .header-blue .navbar {
                padding-top: 1rem;
                padding-bottom: 1rem;
            }
        }

        .header-blue .navbar .navbar-brand {
            font-weight: bold;
            color: inherit;
        }

        .header-blue .navbar .navbar-brand:hover {
            color: #f0f0f0;
        }

        .header-blue .navbar .navbar-collapse {
            border-top: 1px solid rgba(255, 255, 255, 0.3);
            margin-top: .5rem;
        }

        @media (min-width :768px) {
            .header-blue .navbar .navbar-collapse {
                border-color: transparent;
                margin: 0;
            }
        }

        .header-blue .navbar .navbar-collapse span .login {
            color: #fff;
            margin-right: .5rem;
            text-decoration: none;
        }

        .header-blue .navbar .navbar-collapse span .login:hover {
            color: #fff;
        }

        .header-blue .navbar .navbar-toggler {
            border-color: rgba(255, 255, 255, 0.3);
        }

        .header-blue .navbar .navbar-toggler:hover,
        .header-blue .navbar-toggler:focus {
            background: none;
        }

        @media (min-width : 768px) {
            .header-blue .navbar-nav .nav-link {
                padding-left: .7rem;
                padding-right: .7rem;
            }
        }

        @media (min-width : 992px) {
            .header-blue .navbar-nav .nav-link {
                padding-left: 1.2rem;
                padding-right: 1.2rem;
            }
        }

        .header-blue .navbar.navbar-light .navbar-nav .nav-link {
            color: #fff;
        }

        .header-blue .navbar.navbar-light .navbar-nav .nav-link:focus,
        .header-blue .navbar.navbar-light .navbar-nav .nav-link:hover {
            color: #fcfeff !important;
            background-color: transparent;
        }

        .header-blue .navbar .navbar-nav>li>.dropdown-menu {
            margin-top: -5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, .1);
            background-color: #fff;
            border-radius: 2px;
        }

        .header-blue .navbar .dropdown-menu .dropdown-item:focus,
        .header-blue .navbar .dropdown-menu .dropdown-item {
            line-height: 2;
            color: #37434d;
        }

        .header-blue .navbar .dropdown-menu .dropdown-item:focus,
        .header-blue .navbar .dropdown-menu .dropdown-item:hover {
            background: #ebeff1;
        }

        .header-blue .action-button,
        .header-blue .action-button:not(.disabled):active {
            border: 1px solid rgb(255, 255, 255);
            border-radius: 40px;
            color: #fff;
            box-shadow: none;
            text-shadow: none;
            padding: .3rem .8rem;
            background: transparent;
            transition: background-color 0.25s;
            outline: none;
        }

        .header-blue .action-button:hover {
            color: #fff;
        }

        .header-blue .navbar .form-inline label {
            color: #d9d9d9;
        }

        .header-blue .navbar .form-inline .search-field {
            display: inline-block;
            width: 80%;
            background: none;
            border: none;
            border-bottom: 1px solid transparent;
            border-radius: 0;
            color: #fff;
            box-shadow: none;
            color: inherit;
            transition: border-bottom-color 0.3s;
        }

        .header-blue .navbar .form-inline .search-field:focus {
            border-bottom: 1px solid #ccc;
        }

        .header-blue .hero {
            margin-top: 20px;
            text-align: center;
        }

        @media (min-width :768px) {
            .header-blue .hero {
                margin-top: 60px;
                text-align: left;
            }
        }

        .header-blue .hero h1 {
            color: #fff;
            font-size: 40px;
            margin-top: 0;
            margin-bottom: 15px;
            font-weight: 300;
            line-height: 1.4;
        }

        @media (min-width :992px) {
            .header-blue .hero h1 {
                margin-top: 190px;
                margin-bottom: 24px;
                line-height: 1.2;
            }
        }

        .header-blue .hero p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 20px;
            margin-bottom: 30px;
            font-weight: 300;
        }

        .header-blue .phone-holder {
            text-align: right;
        }

        .header-blue div.iphone-mockup {
            position: relative;
            max-width: 300px;
            margin-top: 172px;
            display: inline-block;
        }

        .header-blue .iphone-mockup img.device {
            width: 100%;
            height: auto;
        }

        .header-blue .iphone-mockup .screen {
            position: absolute;
            width: 88;
            height: 77%;
            top: 12%;
            border-radius: 2px;
            left: 6%;
            border: 1px solid #444;
            background-color: #aaa;
            overflow: hidden;
            background: url(../../assets/img/screen-content-iphone-6.jpg);
            background-size: cover;
            background-position: center;
        }

        .header-blue .iphone-mockup .screen:before {
            content: '';
            background-color: #fff;
            position: absolute;
            width: 70%;
            height: 140%;
            top: -12%;
            right: -60%;
            transform: rotate(-19deg);
            opacity: 0.2;
        }

       
        @media screen and (max-width: 768px) {

            .form-select,
            .input-group,
            .btn-primary {
                max-width: 100%;
                margin: 0 0 10px 0;
            }
        }

        @media screen and (max-width: 1074px) {

            .form-select,
            .input-group,
            .btn-primary {
                max-width: 100%;
                margin: 0 0 10px 0;
            }
        }

        @media screen and (max-width: 600px) {

            .form-select,
            .input-group,
            .btn-primary {
                max-width: 100%;
                margin: 0 0 10px 0;
            }
        }
    </style>
</head>

<body>
    <div>
        <div class="header-blue">
            <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">TUTOR INVENTOR</a>
                    <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                        <span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="ebooklist1">Ebook</a></li>
                            <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" data-toggle="dropdown"
                                    aria-expanded="false" href="#">Requset</a>
                                <div class="dropdown-menu" role="menu">
                                    <a class="dropdown-item" role="presentation" href="tutorreq">Find Requests
                                        </a>
                                        <!-- <a class="dropdown-item" role="presentation" href="#"> 
                                        </a><a class="dropdown-item" role="presentation" href="#"></a> -->
                                </div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group">
                                <label for="search-field"></label><i></i>
                            </div>
                        </form>
                        <a href="/tutorlogout"><i class="fa fa-sign-out" style="font-size:25px;color:white"></i></a>

                    </div>
                </div>
            </nav>
            <div class="container hero">
                <div class="row">
                    <div class="col-12 col-lg-6 col-xl-5 offset-xl-1">
                        <h1>Empowering your child's academic success</h1>
                        <p>
                            Our goal is to make the process of finding a good tuition center
                            hassle-free for parents<br>
                        </p>
                        <button class="btn btn-light btn-lg action-button" type="button">
                            See Request<i class="fa fa-long-arrow-right ml-2"></i>
                        </button>
                    </div>
                    <div class="col-md-5 col-lg-5 offset-lg-1 offset-xl-0 d-none d-lg-block phone-holder">
                        <div class="iphone-mockup">

                            <!--  <div class="screen">
							</div>
							
							-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    
         <script>
    const findNowBtn = document.querySelector('.action-button');
    findNowBtn.addEventListener('click', function() {
        window.location.href = 'tutorreq';
    });
</script>
         
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</body>

</html>
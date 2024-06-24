<%-- 
    Document   : client
    Created on : May 19, 2016, 5:14:28 PM
    Author     : java4
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Client</title>
        <style>
            /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
            body {
                font-family: "Open Sans", sans-serif;
                height: 100vh;
                background: url("img/cl1.jpg") 50% fixed;
                background-size: cover;
            }

            @keyframes spinner {
                0% {
                    transform: rotateZ(0deg);
                }
                100% {
                    transform: rotateZ(359deg);
                }
            }
            * {
                box-sizing: border-box;
            }

            .wrapper {
                display: flex;
                align-items: center;
                flex-direction: column;
                justify-content: center;
                width: 100%;
                min-height: 100%;
                padding: 20px;
                background: rgba(4, 40, 68, 0.85);
            }

            .login {
                border-radius: 2px 2px 5px 5px;
                padding: 10px 20px 20px 20px;
                width: 90%;
                max-width: 320px;
                background: #ffffff;
                position: relative;
                padding-bottom: 80px;
                box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);
            }
            .login.loading button {
                max-height: 100%;
                padding-top: 50px;
            }
            .login.loading button .spinner {
                opacity: 1;
                top: 40%;
            }
            .login.ok button {
                background-color: #8bc34a;
            }
            .login.ok button .spinner {
                border-radius: 0;
                border-top-color: transparent;
                border-right-color: transparent;
                height: 20px;
                animation: none;
                transform: rotateZ(-45deg);
            }
            .login input {
                display: block;
                padding: 15px 10px;
                margin-bottom: 10px;
                width: 100%;
                border: 1px solid #ddd;
                transition: border-width 0.2s ease;
                border-radius: 2px;
                color: #ccc;
            }
            .login input + i.fa {
                color: #fff;
                font-size: 1em;
                position: absolute;
                margin-top: -47px;
                opacity: 0;
                left: 0;
                transition: all 0.1s ease-in;
            }
            .login input:focus {
                outline: none;
                color: #444;
                border-color: #2196F3;
                border-left-width: 35px;
            }
            .login input:focus + i.fa {
                opacity: 1;
                left: 30px;
                transition: all 0.25s ease-out;
            }
            .login a {
                font-size: 0.8em;
                color: #2196F3;
                text-decoration: none;
            }
            .login .title {
                color: #444;
                font-size: 1.2em;
                font-weight: bold;
                margin: 10px 0 30px 0;
                border-bottom: 1px solid #eee;
                padding-bottom: 20px;
            }
            .login button {
                width: 100%;
                height: 100%;
                padding: 10px 10px;
                background: #2196F3;
                color: #fff;
                display: block;
                border: none;
                margin-top: 20px;
                position: absolute;
                left: 0;
                bottom: 0;
                max-height: 60px;
                border: 0px solid rgba(0, 0, 0, 0.1);
                border-radius: 0 0 2px 2px;
                transform: rotateZ(0deg);
                transition: all 0.1s ease-out;
                border-bottom-width: 7px;
            }
            .login button .spinner {
                display: block;
                width: 40px;
                height: 40px;
                position: absolute;
                border: 4px solid #ffffff;
                border-top-color: rgba(255, 255, 255, 0.3);
                border-radius: 100%;
                left: 50%;
                top: 0;
                opacity: 0;
                margin-left: -20px;
                margin-top: -20px;
                animation: spinner 0.6s infinite linear;
                transition: top 0.3s 0.3s ease, opacity 0.3s 0.3s ease, border-radius 0.3s ease;
                box-shadow: 0px 1px 0px rgba(0, 0, 0, 0.2);
            }
            .login:not(.loading) button:hover {
                box-shadow: 0px 1px 3px #2196F3;
            }
            .login:not(.loading) button:focus {
                border-bottom-width: 4px;
            }

            footer {
                display: block;
                padding-top: 50px;
                text-align: center;
                color: #ddd;
                font-weight: normal;
                text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.2);
                font-size: 0.8em;
            }
            footer a, footer a:link {
                color: #fff;
                text-decoration: none;
            }

        </style>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link href="css/animate.min.css" rel="stylesheet"> 
        <link href="css/style.css" rel="stylesheet" />	
        <link rel="stylesheet" href="css/normalize.css">
        <script src="js/prefixfree.min.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body >	
        <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
        <%
            }
        %>
        <header id="header">
            <nav class="navbar navbar-default navbar-static-top" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="navbar-brand">
                            <center><a href="#"><h1>Data Security Model For Cloud Computing Using <br>V_GRT Methodology </h1></a></center><br>
                        </div>
                    </div>				
                    <div class="navbar-collapse collapse">							
                        <br><div class="menu">
                            <ul class="nav nav-tabs" role="tablist"><br><br>
                                <li role="presentation"><a href="index.jsp">Home</a></li>
                                <li role="presentation"><a href="client.jsp"  class="active">Client</a></li>
                                <li role="presentation"><a href="csp.jsp" >CSP</a></li>
                                <li role="presentation"><a href="auditor.jsp" >Auditor</a></li>
                                <li role="presentation"><a href="reg.jsp">Registration</a></li>						
                            </ul>
                        </div>
                    </div>		
                </div><!--/.container-->
            </nav><!--/nav-->		
        </header><!--/header-->	

        <div class="slider">		
            <div id="about-slider">
                <div id="carousel-slider" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators visible-xs">
                        <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-slider" data-slide-to="1"></li>
                        <li data-target="#carousel-slider" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">						



                            <br><br><br><center><form class="login" action="loginaction.jsp" method="get">
                                <p class="title">Client Log in</p>
                                <input type="text" placeholder="Email ID" name="email" autofocus/>
                                <i class="fa fa-user"></i>
                                <input type="password" placeholder="Password" name="pass"/>
                                <i class="fa fa-key"></i>

                                <input type="hidden" value="1" name="status" />
                                <!--    <input type="password" placeholder="Secret Key" name="key"/>
                                    <i class="fa fa-key"></i>-->
                                <!--    <input type="hidden" value="2" name="status" />-->
                                <button>
                                    <i class="spinner"></i>
                                    <span class="state">Log in</span>
                                </button>
                                </form></center>

                        </div><br><br><br><br><br><br><br><br><br><br><br><br>


                        <!--							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
                                                                                        <h2><span>Clean & Modern Design Template</span></h2>
                                                                                </div>
                                                                                <div class="col-md-10 col-md-offset-1">
                                                                                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
                                                                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                                                                                        </div>
                                                                                </div>
                                                                                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
                                                                                        <form class="form-inline">
                                                                                                <div class="form-group">
                                                                                                        <button type="livedemo" name="Live Demo" class="btn btn-primary btn-lg" required="required">Live Demo</button>
                                                                                                </div>
                                                                                                <div class="form-group">
                                                                                                        <button type="getnow" name="Get Now" class="btn btn-primary btn-lg" required="required">Get Now</button>
                                                                                                </div>
                                                                                        </form>
                                                                                </div>-->
                    </div>
                </div>

                <!--				    <div class="item">
                                                                <img src="img/22.jpg" class="img-responsive" alt=""> 
                                                                <div class="carousel-caption">
                                                                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.0s">								
                                                                                <h2>Fully Responsive</h2>
                                                                        </div>
                                                                        <div class="col-md-10 col-md-offset-1">
                                                                                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
                                                                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                                                                                </div>
                                                                        </div>
                                                                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">								
                                                                                <form class="form-inline">
                                                                                        <div class="form-group">
                                                                                                <button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Live Demo</button>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                                <button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
                                                                                        </div>
                                                                                </form>
                                                                        </div>
                                                                </div>
                                                    </div> -->
                <!--				    <div class="item">
                                                                <img src="img/222.jpg" class="img-responsive" alt=""> 
                                                                <div class="carousel-caption">
                                                                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
                                                                                <h2>Modern Design</h2>
                                                                        </div>
                                                                        <div class="col-md-10 col-md-offset-1">
                                                                                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
                                                                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                                                                                </div>
                                                                        </div>
                                                                        <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
                                                                                <form class="form-inline">
                                                                                        <div class="form-group">
                                                                                                <button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Live Demo</button>
                                                                                        </div>
                                                                                        <div class="form-group">
                                                                                                <button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
                                                                                        </div>
                                                                                </form>
                                                                        </div>
                                                                </div>
                                                    </div> -->
            </div>

            <!--				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
                                                    <i class="fa fa-angle-left"></i> 
                                            </a>
                                            
                                            <a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
                                                    <i class="fa fa-angle-right"></i> 
                                            </a>-->
        </div> <!--/#carousel-slider-->
    </div><!--/#about-slider-->
</div><!--/#slider-->

<!--	<div class="about">
                <div class="container">
                        <div class="text-center">
                                <h2>Quaerat quod voluptate consequuntur </h2>
                                <div class="col-md-10 col-md-offset-1">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod voluptate consequuntur ad quasi, 
                                        dolores obcaecati ex aliquid, dolor provident accusamus omnis dolorum ipsam. Voluptatem ipsum expedita, corporis facilis laborum asperiores nostrum! 
                                        Amet porro numquam ratione temporibus quia dolorem sint lorem voluptates quasi mollitia.</p>
                                </div>
                
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div class="btn-gamp"><a href="#">Learn More</a></div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                        <div class="gamp-btn"><a href="#">download</a></div>
                                </div>
                                
                        </div>	
                </div>			
        </div>
        <hr>
        
        <div class="services">
                <div class="container">
                        <div class="text-center">
                                <h2>consectetur adipisicing elit</h2>
                        </div>
                        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                <i class="fa fa-heart-o"></i>
                                <h3>Fully Responsive</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum nam numquam voluptates cumque inventore, quibusdam corporis consequatur amet.</p>
                        </div>
                        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                                <i class="fa fa-cloud"></i>
                                <h3>Retina Ready</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum nam numquam voluptates cumque inventore, quibusdam corporis consequatur amet.</p>
                        </div>
                        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
                                <i class="fa fa-book"></i>	
                                <h3>Fresh and Clean</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum nam numquam voluptates cumque inventore, quibusdam corporis consequatur amet.</p>
                        </div>
                        <div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
                                <i class="fa fa-gear"></i>	
                                <h3>Easy to Customize</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum nam numquam voluptates cumque inventore, quibusdam corporis consequatur amet.</p>
                        </div>
                </div>			
        </div>
        
        <section class="action">
                <div class="container">
                        <div class="left-text hidden-xs">
                                <h4>Amet porro numquam ratione</h4>
                                <p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi ut explicabo magni sapiente.</em><br><br>Inventore at quia, vel in repellendus, cumque dolorem autem ad quidem mollitia porro blanditiis atque rerum debitis eveniet nostrum aliquam. Sint aperiam expedita sapiente amet officia quis perspiciatis adipisci, iure dolorem esse exercitationem!</p>
                        </div>
                        <div class="right-image hidden-xs"></div>
                </div>
        </section>
        
        <div class="gallery">
                <div class="text-center">
                        <h2>Gallery</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod voluptate consequuntur ad quasi, dolores obcaecati ex aliquid, dolor provident </p>
                </div>
                <div class="container">		
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/8.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/9.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/10.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                </div>
                
                <div class="container">
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/11.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/12.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                        <div class="col-md-4">
                                <figure class="effect-marley">
                                        <img src="img/13.jpg" alt="" class="img-responsive"/>
                                        <figcaption>
                                                <h4>sweet marley</h4>
                                                <p>Marley tried to convince her but she was not interested.</p>				
                                        </figcaption>			
                                </figure>
                        </div>
                </div>
        </div>-->

<footer>
    <div class="container">
        <!--			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
                                        <h4>About Us</h4>
                                        <p>Day is tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters.</p>						
                                        <div class="contact-info">
                                                <ul>
                                                        <li><i class="fa fa-home fa"></i>Suite 54 Elizebth Street, Victoria State Newyork, USA </li>
                                                        <li><i class="fa fa-phone fa"></i> +38 000 129900</li>
                                                        <li><i class="fa fa-envelope fa"></i> info@domain.net</li>
                                                </ul>
                                        </div>
                                </div>-->

        <!--			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">				
                                        <div class="text-center">
                                                <h4>Photo Gallery</h4>
                                                <ul class="sidebar-gallery">
                                                        <li><a href="#"><img src="img/gallery1.png" alt="" /></a></li>
                                                        <li><a href="#"><img src="img/gallery2.png" alt="" /></a></li>
                                                        <li><a href="#"><img src="img/gallery3.png" alt="" /></a></li>
                                                        <li><a href="#"><img src="img/gallery4.png" alt="" /></a></li>
                                                        <li><a href="#"><img src="img/gallery5.png" alt="" /></a></li>
                                                        <li><a href="#"><img src="img/gallery6.png" alt="" /></a></li>					
                                                </ul>
                                        </div>
                                </div>-->

        <!--			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">				
                                        <div class="">
                                                <h4>Newsletter Registration</h4>
                                                <p>Subscribe today to receive the latest Day news via email. You may unsubscribe from this service at any time</p>
                                                <div class="btn-gamp">		
                                                        <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Enter Email">
                                                </div>
                                                <div class="btn-gamp">
                                                        <a type="submit" class="btn btn-default">Subscribe</a>
                                                </div>
                                        
                                </div>
                                
                        </div>	-->
</footer>

<div class="sub-footer">
    <div class="container">
        <div class="social-icon">
            <div class="col-md-4">
                <ul class="social-network">
                    <li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
                </ul>	
            </div>
        </div>

        <div class="col-md-4 col-md-offset-4">
            <div class="copyright">
                &copy; 2023 All Rights Reserved.
            </div>
            <!-- 
                All links in the footer should remain intact. 
                Licenseing information is available at: http://bootstraptaste.com/license/
                You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Day
            -->
        </div>						
    </div>				
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.js"></script>		
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>	
<script src="js/wow.min.js"></script>
<script>
    wow = new WOW(
            {

            })
            .init();
</script>	
</body>
</html>
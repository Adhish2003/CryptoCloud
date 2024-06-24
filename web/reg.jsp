<%-- 
    Document   : reg
    Created on : May 19, 2016, 5:33:38 PM
    Author     : java4
--%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Registration</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link href="css/animate.min.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet" />	
        <script>
                    
            function checkform(){
                
            }
        </script>
  </head>
  <body background="img\re1.jpg">
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Registration Succesfully');</script>
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
							<li role="presentation"><a href="client.jsp">Client</a></li>
                                                          <li role="presentation"><a href="csp.jsp" >CSP</a></li>
							<li role="presentation"><a href="auditor.jsp" >Auditor</a></li>
							<li role="presentation"><a href="reg.jsp" class="active">Registration</a></li>						
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
						<img  class="img-responsive" alt=""> 
                                                
						    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
                                                    <div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
<!--                <a href="http://www.freshdesignweb.com" target="_blank">Home</a>-->
                <span class="right">

                </span>
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1><span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration</h1>
            </header>       
            <div  class="form" >
          
                <form id="contactform" action="loginaction.jsp" method="get"> 
    			<p class="contact"><label for="name"></label></p> 
    			<input id="name" name="name" placeholder="Client Name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email"></label></p> 
                        <input id="email" name="email" placeholder="example@gmail.com" required="" autocomplete="off" type="email" onkeyup="check(this.value);"/><font color="red"><div id="mydiv"></div></font> 
                
                <p class="contact"><label for="username"></label></p> 
    			<input id="username" name="username" placeholder="User Name" required="" tabindex="2" type="text"> 
                <p class="contact"><label for="Password"></label></p> 
                <input id="username" name="rpass" placeholder="Password" required="" tabindex="2" type="password"> 
    	

                        <p class="contact"><label for="name"></label></p> 
                        <input id="email" name="date" placeholder="Date Of Birth" required="" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))"  type="date"> 
        
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="others">Other</option>
            </select>
            <p class="contact"><label for="state"></label></p> 
    			<input id="username" name="state" placeholder="State" required="" tabindex="2" type="text"> 
                        <p class="contact"><label for="country"></label></p> 
    			<input id="username" name="country" placeholder="Country" required="" tabindex="2" type="text"> 
            <p class="contact"><label for="phone"></label></p> 
            <input id="phone" name="phone" placeholder="Phone Number" required="" pattern="[789][0-9]{9}" type="text"> <br>
             <input type="hidden" value="3" name="status" />
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
   </form>  
</div>      
</div><br><br><br>
                                                    
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
				    </div> 
				    <div class="item">
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
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
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
	
		}	) 
		.init();
	</script>
        <script type="text/javascript">
            function check(value) {
                xmlHttp = GetXmlHttpObject()
                var url = "checkajax.jsp";
                url = url + "?email=" + value;
                xmlHttp.onreadystatechange = stateChanged
                xmlHttp.open("GET", url, true)
                xmlHttp.send(null)
            }
            function stateChanged() {
                if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                    var showdata = xmlHttp.responseText;
                    document.getElementById("mydiv").innerHTML = showdata;
                }
            }
            function GetXmlHttpObject() {
                var xmlHttp = null;
                try {
                    xmlHttp = new XMLHttpRequest();
                } catch (e) {
                    try {
                        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                    } catch (e) {
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
        </script>
  </body>
</html>

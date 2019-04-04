<!------------------------------------------------------------------------------
  Modification Log
  Date          Name            Description
  ----------    -------------   -----------------------------------------------
  2-14-2019      THon      Initial Deployment.
  ----------------------------------------------------------------------------->
<?php
    $visitor_fname = filter_input(INPUT_POST, 'fName');
    $visitor_lname = filter_input(INPUT_POST, 'lName');
    $visitor_phone = filter_input(INPUT_POST, 'tel');
    $visitor_email = filter_input(INPUT_POST, 'email');
    $visitor_msg = filter_input(INPUT_POST, 'questions');
    /* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg;  */
    
    // Validate inputs
    if ($visitor_fname == null || $visitor_lname == null || $visitor_email == null || $visitor_phone == null ||
        $visitor_msg == null) {
        $error = "Invalid input data. Check all fields and try again.";
        /* include('error.php'); */
        echo "Form Data Error: " . $error; 
        exit();
        } else {
            
            // Connect to db
            try {
                require 'database.php';
                require 'visitor.php';
                
            } catch (PDOException $e) {
                include 'error.php';
                echo 'Connection error: ' . $e->getMessage();
                exit();
            }
            
            add_visitor($visitor_fname, $visitor_lname, $visitor_phone, $visitor_email, $visitor_msg);
}

?>


<!DOCTYPE html>
<!-- saved from url=(0066)http://spring18tylerh.w3expressions.org/portfolioTest/contact.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tyler Hon Portfolio</title>
	
    <link rel="stylesheet" href="Tyler Hon Portfolio_files/portfoliostyles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div id="container">

    <div id="mobile">

    <header>
        <figure>
            <img src="./Portfolio Contact_files/contactlogo.png" alt="Contact Logo">
        </figure>

        <p>Contact</p>

    </header>
    <nav>
        <ul class="nav">
            <li><a href="Tyler Hon Portfolio.html">Home</a></li>
            <li><a href="Portfolio experience.html">Experience</a></li>
            <li><a href="Portfolio samples.html">Samples</a></li>
            <li><a href="Portfolio Contact.html">Contact</a></li>
            <li><a href="login.php">Login</a></li>
        </ul>
    </nav>

    <br>
<section>
  <h2>Thank you for contacting me! I will get back to you shortly.</h2>
  
  
        <!-- display a list of categories -->
        
    

        
        
    
  
  <br>
</section>
        
	
	
	</div>
	
	<main>
		
	</main>
	<!--end main-->
        <br>
        <br>
        <br>
	<footer>
		
		<div id="copyright">
		© Copyright 2018. All Rights Reserved. <br>
		<a href="mailto:tylerhon11@gmail.com">tylerhon11@gmail.com</a>
		</div>
		
		<div id="social">
			<p>Connect with me:</p>
			
			<a href="https://www.instagram.com/tyler.hon/?hl=en" target="blank">
			<img src="./Portfolio Contact_files/instagramlogo.png" alt="Instagram logo"></a>	
			
			<a href="https://www.linkedin.com/" target="blank">
			<img src="./Portfolio Contact_files/linkedinlogo.png" alt="Linkedin logo"></a>
			
			<a href="https://github.com/tylerhon" target="blank">
			<img src="./Portfolio Contact_files/githublogo.png" alt="Github logo"></a>
			
		</div>
	</footer>
	
	</div>
	<!--end outerwrapper-->
	

</body></html>
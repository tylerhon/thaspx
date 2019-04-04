<!------------------------------------------------------------------------------
  Modification Log
  Date          Name            Description
  ----------    -------------   -----------------------------------------------
  2-14-2018      THon      Initial Deployment.
  ----------------------------------------------------------------------------->
<?php   
// Connect to db
try {
    include_once 'database.php';
    include "visitor.php";
    include "employee.php";
} catch (PDOException $e) {
    echo 'Connection error: ' . $e->getMessage();
    exit();
}
        
// Check action; on initial load it is null
$action = filter_input(INPUT_POST, 'action');
if ($action == NULL) {
    $action = filter_input(INPUT_GET, 'action');
    if ($action == NULL) {
        $action = 'list_visitors';
    }
}  

// List the visitors & employees
if ($action == 'list_visitors') {

    // Read employee data 

    $employeeID = filter_input(INPUT_GET, 'empID', 
            FILTER_VALIDATE_INT);
    if ($employeeID == NULL || $employeeID == FALSE) {
        $employeeID = 1;
    }
    try {

        $employees = getEmployees();
        
        $visitors = getVisitors($employeeID);
    }
    catch(PDOException $e){
        echo 'Error: ' . $e->getMessage();
        include 'error.php';
    }
}

// Executed when user clicks delete button
else if ($action == 'delete_visitor') {

    deleteVisitor($visitor_id);
    header("Location: admin.php");
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
  
  
  
        <!-- display a list of categories -->
        
    <h3>Select an employee email to view messages</h3>
            <!-- display links for all employees -->
            <ul style="list-style-type:none;">
                <?php foreach($employees as $employee) : ?>
                <li>
                    <a href="?empID=<?php echo $employee['employeeID']; ?>">
                        <?php echo $employee['first_name'] . $employee['last_name']; ?> 
                    </a> 
                    
                </li>
                <?php endforeach; ?>

            </ul>
            </br>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone number</th>
                <th>Message</th>
                <th class="right">Delete visitor</th>
                
            </tr>
            <?php foreach ($visitors as $visitor) : ?>
            <tr>
                <td><?php echo $visitor['visitor_fname']; ?></td>
                <td><?php echo $visitor['visitor_lname']; ?></td>
                <td><?php echo $visitor['visitor_email']; ?></td>
                <td><?php echo $visitor['visitor_phone']; ?></td>
                <td><?php echo $visitor['visitor_msg']; ?></td> </td>
                <td><form action="ththankyou.php" method="post">
                    <input type="hidden" name="action"
                           value="delete_visitor">
                    <input type="hidden" name="visitor_id"
                           value="<?php echo $visitor['visitor_id']; ?>">
                    <input type="submit" value="Delete">
                </form></td>
            </tr>
            <?php endforeach; ?>
        </table>

        
        
    
  
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

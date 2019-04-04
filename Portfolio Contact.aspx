<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<!-- saved from url=(0066)http://spring18tylerh.w3expressions.org/portfolioTest/contact.html -->
<script runat="server">
    protected void submitButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // Code that uses the data entered by the user
            // Define data objects
            SqlConnection conn;
            SqlCommand comm;
            // Read the connection string from Web.config
            string connectionString =
                ConfigurationManager.ConnectionStrings[
                "thport"].ConnectionString;
            // Initialize connection
            conn = new SqlConnection(connectionString);
            // Create command 
            comm = new SqlCommand("EXEC sp_ins_visitor @fNameTextBox, @lNameTextBox, @telTextBox, @emailTextBox, @questionsTextBox", conn);
            comm.Parameters.Add("@fNameTextBox", System.Data.SqlDbType.NChar, 50);
            comm.Parameters["@fNameTextBox"].Value = fName.Text;
            comm.Parameters.Add("@lNameTextBox", System.Data.SqlDbType.NChar, 50);
            comm.Parameters["@lNameTextBox"].Value = lName.Text;
            comm.Parameters.Add("@telTextBox", System.Data.SqlDbType.NChar, 50);
            comm.Parameters["@telTextBox"].Value = tel.Text;
            comm.Parameters.Add("@emailTextBox", System.Data.SqlDbType.NChar, 50);
            comm.Parameters["@emailTextBox"].Value = email.Text;
            comm.Parameters.Add("@questionsTextBox", System.Data.SqlDbType.NChar, 200);
            comm.Parameters["@questionsTextBox"].Value = questions.Text;

            // Enclose database code in Try-Catch-Finally
            try
            {
                // Open the connection
                conn.Open();
                // Execute the command
                comm.ExecuteNonQuery();
                // Reload page if the query executed successfully
                Response.Redirect("ththankyou.html");
            }
            catch (SqlException ex)
            {
                // Display error message
                dbErrorMessage.Text =
                   "Error submitting the data!" + ex.Message.ToString();

            }
            finally
            {
                // Close the connection
                conn.Close();
            }
        }
    }

</script>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
            <br>
            <br>
            <br>
	
	<nav>
		<ul class="nav">
			<li><a href="Tyler Hon Portfolio.html">Home</a></li>
			<li><a href="Portfolio experience.html">Experience</a></li>
			<li><a href="Portfolio samples.html">Samples</a></li>
			<li><a href="Portfolio Contact.html">Contact</a></li>
                        <li><a href="login.php">Login</a></li>
		</ul>
	</nav>
	</div>
	
	<main>
	<section>
			
			<article>
				<div class="reformed-form">
	<form runat="server">
		<h3>Any questions?</h3>
		<h3>Complete the form below!</h3>
		<dl>
			<dt>
				<label for="fName">First Name:</label>
			</dt>
			<%--<dd><input type="text" id="fName" name="fName" required></dd>--%>
            <asp:TextBox ID="fName" runat="server"/>
		</dl>
		<dl>
			<dt>
				<label for="lName">Last Name:</label>
			</dt>
			<%--<dd><input type="text" id="lName" name="lName" required></dd>--%>
            <asp:TextBox ID="lName" runat="server"/>
		</dl>
		<dl>
			<dt>
				<label for="email">Email:</label>
			</dt>
			<%--<dd><input type="email" id="email" name="email" required></dd>--%>
            <asp:TextBox ID="email" runat="server"/>
		</dl>
		<dl>
			<dt>
				<label for="tel">Phone Number:</label>
			</dt>
			<%--<dd><input type="tel" id="tel" name="tel" required></dd>--%>
            <asp:TextBox ID="tel" runat="server"/>
		</dl>
		<dl>
			<dt>
				<label for="questions">Questions:</label>
			</dt>
			<%--<dd><textarea id="questions" name="questions" rows="5" cols="21"></textarea></dd>--%>
            <asp:TextBox ID="questions" runat="server"/>
		</dl>
		<div id="submit_buttons">
			<button type="reset">Reset</button>
			<br>
			<br>
			<asp:Button ID="submitButton" runat="server"
                Text="Submit" onclick="submitButton_Click" />

            <br />
                <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>

		</div>
	</form>
</div>

			</article>
			<article>
				<h2>Personal Info:</h2>
				
				<h3>Email</h3>
					<p><a href="mailto:tylerhon11@gmail.com">tylerhon11@gmail.com</a></p>
					
				<h3>Phone Number</h3>
					<p><a class="mobile" href="tel:2089361352">208-936-1352</a></p>
					<p><a class="desktop">208-936-1352</a></p>
			</article>
			
		</section>
	
		
	</main>
	<!--end main-->
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
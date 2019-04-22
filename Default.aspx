<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disk Inventory</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form id="form1" runat="server" class="form-horizontal">
        <header class="logo"></header> 
        <div class="container-fluid">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Default.aspx">Disk Inventory</a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
            </ul>
        </div>
    </nav>
            <main class="col-sm-9">

            </main>
   
        </div>

        <footer class="text-center text-info">

        </footer>
     </form>
</body>
</html>

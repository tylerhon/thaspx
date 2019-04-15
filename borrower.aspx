<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrower.aspx.cs" Inherits="borrower" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Borrower</title>
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
                    <a class="navbar-brand" href="Default.aspx">Borrower</a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li style="height: 26px"><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
            </ul>
                <p>
                    &nbsp;</p>
        </div>
    </nav>
            <main class="col-sm-9">

            <br />
            First Name:
            <asp:TextBox ID="fName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="fNameRequired" runat="server" ControlToValidate="fName" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="lName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lNameRequired" runat="server" ControlToValidate="lName" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
            <br />
            <br />
            Phone Number:
            <asp:TextBox ID="phoneNum" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                  ControlToValidate="phoneNum" Text="Use this format: 999-999-9999"
                  ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
            </asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"/>

            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

            </main>
   
        </div>

        
     </form>
</body>
</html>


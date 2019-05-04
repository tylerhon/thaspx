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
                    <a class="navbar-brand" href="Default.aspx">
                        <h2>Borrower</h2>

                    </a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li style="height: 24px"><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
                <li style="height: 24px"><a href="CheckOut.aspx">Check Out</a></li>
                <li style="height: 24px"><a href="checkOutReport.aspx">Check Out Report</a></li>
            </ul>
               
        </div>
    </nav>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="borrower_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phone_numbLabel" runat="server" Text='<%# Eval("phone_numb") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit"/>
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel1" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                            <asp:RequiredFieldValidator ID="fNameRequired" runat="server" ControlToValidate="fnameTextBox" 
                                validationGroup="Edit" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                            <asp:RequiredFieldValidator ID="lNameRequired" runat="server" ControlToValidate="lnameTextBox" 
                                validationGroup="Edit" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="phone_numbTextBox" runat="server" Text='<%# Bind("phone_numb") %>' />
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                                  ControlToValidate="phone_numbTextBox" Text="Use this format: 999-999-9999"
                                  validationGroup="Edit" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                            <asp:RequiredFieldValidator ID="fNameRequired" runat="server" ControlToValidate="fnameTextBox" 
                                validationGroup="Insert" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                            <asp:RequiredFieldValidator ID="lNameRequired" runat="server" ControlToValidate="lnameTextBox" 
                                validationGroup="Insert" ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="phone_numbTextBox" runat="server" Text='<%# Bind("phone_numb") %>' />
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                                  ControlToValidate="phone_numbTextBox" Text="Use this format: 999-999-9999"
                                  validationGroup="Insert" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                            
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                            
                        </td>
                        <td>
                            <asp:Label ID="phone_numbLabel" runat="server" Text='<%# Eval("phone_numb") %>' />
                            
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">Borrower</th>
                                        <th runat="server">First Name</th>
                                        <th runat="server">Last Name</th>
                                        <th runat="server">Phone Number</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phone_numbLabel" runat="server" Text='<%# Eval("phone_numb") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString %>" 
                DeleteCommand="EXECUTE del_borrower @borrower_id" 
                InsertCommand="EXECUTE ins_borrower @fname, @lname, @phone_numb" 
                SelectCommand="SELECT * FROM [borrower] ORDER BY [lname]" 
                UpdateCommand="EXECUTE upd_borrower @borrower_id, @fname, @lname, @phone_numb">
                <DeleteParameters>
                    <asp:Parameter Name="borrower_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="phone_numb" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="phone_numb" Type="String" />
                    <asp:Parameter Name="borrower_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <main class="col-sm-9">

            <br />
            <br />
      
           
            </main>
   
        </div>

        
     </form>
</body>
</html>


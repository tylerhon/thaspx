<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkOutReport.aspx.cs" Inherits="checkOutReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Out Report</title>
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
                    <a class="navbar-brand" href="Default.aspx">Check Out</a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li style="height: 22px"><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
                <li style="height: 24px"><a href="CheckOut.aspx">Check Out</a></li>
                <li style="height: 24px"><a href="checkOutReport.aspx">Check Out Report</a></li>

            </ul>
        </div>
    </nav>
                    
            <main class="col-sm-9">
                
            <br />
            <br />
            <h2>Checked Out Items</h2>
            <br />

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="disk_id,borrower_id,borrowed_date">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrowed_dateLabel" runat="server" Text='<%# Eval("borrowed_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="returned_dateLabel" runat="server" Text='<%# Eval("returned_date") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel1" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel1" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrowed_dateLabel1" runat="server" Text='<%# Eval("borrowed_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="returned_dateTextBox" runat="server" Text='<%# Bind("returned_date") %>' />
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
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_idTextBox" runat="server" Text='<%# Bind("disk_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="borrower_idTextBox" runat="server" Text='<%# Bind("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="borrowed_dateTextBox" runat="server" Text='<%# Bind("borrowed_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="returned_dateTextBox" runat="server" Text='<%# Bind("returned_date") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrowed_dateLabel" runat="server" Text='<%# Eval("borrowed_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="returned_dateLabel" runat="server" Text='<%# Eval("returned_date") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server">Disk Name</th>
                                        <th runat="server">Borrower Name</th>
                                        <th runat="server">Borrowed Date</th>
                                        <th runat="server">Returned Date</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="borrowed_dateLabel" runat="server" Text='<%# Eval("borrowed_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="returned_dateLabel" runat="server" Text='<%# Eval("returned_date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString %>" 
                SelectCommand="SELECT * FROM [diskHasBorrower]"></asp:SqlDataSource>

            </main></div>

        
     </form>
</div>
</body>
</html>


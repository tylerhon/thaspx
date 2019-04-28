<%@ Page Language="C#" AutoEventWireup="true" CodeFile="artist.aspx.cs" Inherits="artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Artist</title>
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
                    <a class="navbar-brand" href="Default.aspx">Artist</a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
                <li><a href="CheckOut.aspx">Check Out</a></li>
                <li style="height: 24px"><a href="checkOutReport.aspx">Check Out Report</a></li>
            </ul>
        </div>
    </nav>
            <main class="col-sm-9">
                <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="artist_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
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
                            <asp:Label ID="artist_idLabel1" runat="server" Text='<%# Eval("artist_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fnameTextBox" 
                                ValidationGroup="Edit" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                        </td>
                        <td>
                             <asp:DropDownList ID="ddlartist_type_id" runat="server"
                                DataSourceID="SqlDataSource2"
                                DataTextField="description" DataValueField="artist_type_id"
                                SelectedValue='<%# Bind("artist_type_id") %>'
                              ></asp:DropDownList>
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
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert"/>
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fnameTextBox" 
                                ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlartist_type_id" runat="server"
                                DataSourceID="SqlDataSource2"
                                DataTextField="description" DataValueField="artist_type_id"
                                SelectedValue='<%# Bind("artist_type_id") %>'
                                ></asp:DropDownList>
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
                            <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
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
                                        <th runat="server">Artist ID</th>
                                        <th runat="server">First Name</th>
                                        <th runat="server">Last Name</th>
                                        <th runat="server">Artist Type</th>
                                    </tr>des
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
                            <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString2 %>" 
                DeleteCommand="EXECUTE del_artist @artist_id" 
                InsertCommand="EXECUTE ins_artist @fname, @lname, @artist_type_id" 
                SelectCommand="SELECT artist_id, fname, lname, artist_type_id FROM [Artist]"
                UpdateCommand="EXECUTE upd_artist @artist_id, @fname, @lname, @artist_type_id"> 
                <DeleteParameters>
                    <asp:Parameter Name="artist_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="artist_type_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="artist_type_id" Type="Int32" />
                    <asp:Parameter Name="artist_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString2 %>" 
                SelectCommand="SELECT [artist_type_id], [description] FROM [artist_type] ORDER BY [description]"></asp:SqlDataSource>
            </main>
   
        </div>

     </form>
</body>
</html>


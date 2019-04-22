<%@ Page Language="C#" AutoEventWireup="true" CodeFile="disk.aspx.cs" Inherits="disk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disk</title>
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
                    <a class="navbar-brand" href="Default.aspx">Disk</a>
                </div>
            <ul class="nav navbar-nav">
                <li class="acive"><a href="Default.aspx">Home</a></li>
                <li><a href="artist.aspx">Aritist</a></li>
                <li><a href="borrower.aspx">Borrower</a></li>
                <li><a href="disk.aspx">Disk</a></li>
            </ul>
        </div>
    </nav>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="disk_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
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
                            <asp:Label ID="disk_idLabel1" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_nameTextBox" runat="server" Text='<%# Bind("disk_name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="disk_nameTextBox" 
                                ValidationGroup="Edit" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="release_dateTextBox" runat="server" Text='<%# Bind("release_date") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="release_dateTextBox" 
                                ValidationGroup="Edit" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="genre_idTextBox" 
                                ValidationGroup="Edit" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_type_idTextBox" runat="server" Text='<%# Bind("disk_type_id") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="disk_type_idTextBox" 
                                ValidationGroup="Edit" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
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
                            <asp:TextBox ID="disk_nameTextBox" runat="server" Text='<%# Bind("disk_name") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="disk_nameTextBox" 
                                ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="release_dateTextBox" runat="server" Text='<%# Bind("release_date") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="release_dateTextBox" 
                                ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="genre_idTextBox" 
                                ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_type_idTextBox" runat="server" Text='<%# Bind("disk_type_id") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="disk_type_idTextBox" 
                                ValidationGroup="Insert" runat="server" 
                                ErrorMessage="Entry is required."></asp:RequiredFieldValidator>
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
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
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
                                        <th runat="server">disk_id</th>
                                        <th runat="server">disk_name</th>
                                        <th runat="server">release_date</th>
                                        <th runat="server">genre_id</th>
                                        <th runat="server">status_id</th>
                                        <th runat="server">disk_type_id</th>
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
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString2 %>"
                DeleteCommand="EXEC del_disk @disk_id" 
                InsertCommand="EXEC ins_disk @disk_name, @release_date, @genre_id, @status_id, @disk_type_id" 
                SelectCommand="SELECT * FROM [disk]" 
                UpdateCommand="EXEC upd_disk @disk_id, @disk_name,  @release_date,  @genre_id, @status_id, @disk_type_id">
                <DeleteParameters>
                    <asp:Parameter Name="disk_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="disk_name" Type="String" />
                    <asp:Parameter Name="release_date" Type="DateTime" />
                    <asp:Parameter Name="genre_id" Type="Int32" />
                    <asp:Parameter Name="status_id" Type="Int32" />
                    <asp:Parameter Name="disk_type_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="disk_id" Type="Int32" />
                    <asp:Parameter Name="disk_name" Type="String" />
                    <asp:Parameter Name="release_date" Type="DateTime" />
                    <asp:Parameter Name="genre_id" Type="Int32" />
                    <asp:Parameter Name="status_id" Type="Int32" />
                    <asp:Parameter Name="disk_type_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString %>" 
                SelectCommand="SELECT [disk_type_id], [description] FROM [disk_type]"></asp:SqlDataSource>

            <main class="col-sm-9">
                <br />
            </main>
   
        </div>

        <footer class="text-center text-info">

        </footer>
     </form>
</body>
</html>

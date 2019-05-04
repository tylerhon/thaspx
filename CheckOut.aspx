<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Out</title>
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
                        <h2>Check Out</h2>

                    </a>
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

            <%@ Import Namespace="System.Data.SqlClient" %>

            <script runat="server">
                protected void Button1_Click(object sender, EventArgs e)
                {
                    if (Page. IsValid)
                    {
                        SqlConnection connection;
                        SqlCommand command;

                        string connectionString =
                            ConfigurationManager.ConnectionStrings["disk_inventorythConnectionString"].ConnectionString;

                        connection = new SqlConnection(connectionString);

                        command = new SqlCommand("EXEC INS_diskHasBorrower @disk_id, @borrower_id, @borrowed_date", connection);

                        command.Parameters.Add("@disk_id", System.Data.SqlDbType.Int);
                        command.Parameters["@disk_id"].Value = DropDownList1.SelectedValue;

                        command.Parameters.Add("@borrower_id", System.Data.SqlDbType.Int);
                        command.Parameters["@borrower_id"].Value = DropDownList2.SelectedValue;

                        command.Parameters.Add("@borrowed_date", System.Data.SqlDbType.DateTime);
                        command.Parameters["@borrowed_date"].Value = Calendar1.SelectedDate;

                        try
                        {
                            connection.Open();

                            command.ExecuteNonQuery();

                            Response.Redirect("checkOutReport.aspx");
                        }
                        catch (SqlException ex)
                        {
                            msgLabel.Text = "Error" + ex.Message.ToString();
                        }
                        finally
                        {
                            connection.Close();
                        }

                    }
                }
            </script>

                    
          <main class="col-sm-9">
                
            
            Select disk name:<br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="disk_name" DataValueField="disk_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString %>" 
                SelectCommand="SELECT * FROM [disk] WHERE ([status_id] = @status_id) ORDER BY [disk_name]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="status_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                
            <br />
            <br />
            Select borrower name:<br />
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="lname" DataValueField="borrower_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventorythConnectionString %>" 
                SelectCommand="SELECT [lname], borrower_id FROM [borrower] ORDER BY [lname], [fname]"></asp:SqlDataSource>
                
            <br />
            <br />
            Check out date:
            <br />
            <br />

          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                            <br />
            </ContentTemplate>
            
          </asp:UpdatePanel>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Out" />
                
            <br />
            <br />
            <asp:Label ID="msgLabel" runat="server"></asp:Label>
                

          </main>
   
        </div>

        
     </form>
</div>
</body>
</html>


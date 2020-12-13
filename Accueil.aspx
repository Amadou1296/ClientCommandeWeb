<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="ClientCommandeWeb.Accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Accueil</title>
        <style>
        body {
                /*margin: 0;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;*/
                /*background-color: teal;*/
            }
            
            :root {
                /*font-size: 10px;*/
            }

            nav ul {
                padding: 0;
                list-style-type: none;
            }

            nav li {
                width: 8rem;
                height: 4rem;
                font-size: 15px;
                font-weight:bold;
                text-align: center;
                line-height: 5rem;
                font-family: sans-serif;
                text-transform: uppercase;
                letter-spacing: 1px;
                position: relative;
                transition: 0.3s;
                margin: 2rem;
            }

            nav li::before,
            nav li::after {
                content: '';
                position: absolute;
                width: inherit;
                height: inherit;
                top: 0;
                left: 0;
                transition: 0.3s;
            }

            nav li::before {
                background-color: white;
                z-index: -1;
                box-shadow: 0.2rem 0.2rem 0.5rem rgba(0, 0, 0, 0.2);
            }

            nav li::after {
                background-color: goldenrod;/*goldenrod*/
                transform: translate(1rem, 1rem);
                z-index: -2;
            }

            nav li:hover {
                transform: translate(1.5rem, 1.5rem);
                color: white;
            }

            nav li:hover::before {
                background-color: goldenrod;
            }

            nav li:hover::after {
                background-color: white;
                transform: translate(-1.5rem, -1.5rem);
            }
    </style>
     </head>
    <body>
        
        <div class="container-fluid row">
            <div class="col-lg-2 " style="box-shadow:rgba(0,0,0,0.35) 0px 5px 15px; ">
                <div style="margin-left:30%"><img src="images/menu.jpg" style="width:60%; margin-top:20%;" alt="Sample Photo" /></div>
            <nav>
              <ul style="font-size:15px">
                <li  style="background-color:cornflowerblue;"><a style="color:white" href="Accueil.aspx">Clients</a></li>
                <li> <a style="color:black" href="Commande.aspx">Commandes</a></li>
                <li> <a style="color:black" href="Produits.aspx">Produits</a></li>
                <li>contact</li>
              </ul>
            </nav>

            <img src="images/image.jpg" style="width:100%; margin-top:20%" alt="Sample Photo" />
        </div>
        <div class="col-lg-10">
            
             <p><asp:Literal ID="essai" runat="server" /></p>
            <form id="form1" class="form-group" runat="server">
                <div class="row" style="margin-top:1%;">
                    <div class="col-md-12 ">
                        <div class="col-md-12" style="background;color:mediumblue;letter-spacing:5px;text-shadow:rgba(0,0,0,0.35) 0px 5px 10px; font-size:30px ; font-family:Algerian; text-align:center; margin-bottom:2%">Gestion des clients</div>
                        <div style="box-shadow:rgba(0,0,0,0.35) 0px 5px 15px">
                        <p style="font-size: 20px;font-weight:bold; text-align:center">Ajout de clients</p>
                        <table class="table table-responsive">
                            <tr>    
                                <td style="font-family:cursive">CustomerID</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="CustomerID" runat="server" />    
                                </td>    
                                <td style="font-family:cursive">CompanyName</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="CompanyName" runat="server" />    
                                </td> 
                                <td style="font-family:cursive">ContactName</td>    
                                <td style="font-family:cursive">    
                                    <asp:TextBox class="form-control" ID="ContactName" runat="server" />    
                                </td> 
                            </tr>    
                            
                            <tr>    
                                <td style="font-family:cursive">ContactTitle</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="ContactTitle" runat="server" />    
                                </td>   
                                <td style="font-family:cursive">Address</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Address" runat="server" />    
                                </td> 
                                <td style="font-family:cursive">City</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="City" runat="server" />    
                                </td>
                            </tr> 
                            <tr>    
                                <td style="font-family:cursive">Region</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Region" runat="server" />    
                                </td>    
                                <td style="font-family:cursive">PostalCode</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="PostalCode" runat="server" />    
                                </td> 
                                <td style="font-family:cursive">Country</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Country" runat="server" />    
                                </td>
                            </tr>
                           
                            <tr>    
                                <td style="font-family:cursive">Phone</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Phone" type="number" runat="server" />    
                                </td>   
                                <td style="font-family:cursive">Fax</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Fax" type="number" runat="server" />    
                                </td > 
                                <td></td>    
                                <td>    
                                    <asp:Button ID="insert" runat="server" class="alert-info" Text="INSERER" OnClick="insert_Click" />  
                                </td>
                            </tr>
                            
                        </table>
                            </div>
                    </div>

                     <div class="col-md-12">
                        <div style="height:85%; overflow:auto; height:15%; box-shadow:rgba(0,0,0,0.35) 0px 5px 15px" >
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                                <AlternatingRowStyle BackColor="White" />
                                
                                
                                
                                <Columns>
                                    
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    
                                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                                    <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                                    <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                                </Columns>
                                
                                
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />

                                
                               
                                
                            </asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Customers]" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName, @ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode, @Country, @Phone, @Fax)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [ContactTitle] = @ContactTitle, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Fax] = @Fax WHERE [CustomerID] = @CustomerID">
                                <DeleteParameters>
                                    <asp:Parameter Name="CustomerID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CustomerID" Type="String" />
                                    <asp:Parameter Name="CompanyName" Type="String" />
                                    <asp:Parameter Name="ContactName" Type="String" />
                                    <asp:Parameter Name="ContactTitle" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="City" Type="String" />
                                    <asp:Parameter Name="Region" Type="String" />
                                    <asp:Parameter Name="PostalCode" Type="String" />
                                    <asp:Parameter Name="Country" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Fax" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CompanyName" Type="String" />
                                    <asp:Parameter Name="ContactName" Type="String" />
                                    <asp:Parameter Name="ContactTitle" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="City" Type="String" />
                                    <asp:Parameter Name="Region" Type="String" />
                                    <asp:Parameter Name="PostalCode" Type="String" />
                                    <asp:Parameter Name="Country" Type="String" />
                                    <asp:Parameter Name="Phone" Type="String" />
                                    <asp:Parameter Name="Fax" Type="String" />
                                    <asp:Parameter Name="CustomerID" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>


                        </div>
                    </div>
                </div>
            </form>
        </div> 
        </div>
    </body>
</html>

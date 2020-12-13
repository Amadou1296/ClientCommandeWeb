<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Commande.aspx.cs" Inherits="ClientCommandeWeb.Commande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Scripts/jquery-3.0.0.js" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Commande</title>
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
                font-weight:bold;
                height: 4rem;
                font-size: 14px;
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
                box-shadow: 0.2rem 0.2rem 0.5rem rgba(0, 0, 0, 0.2);
                transform: translate(-1.5rem, -1.5rem);
            }
    </style>
</head>
<body>

    <div class="container-fluid row">
        


        <div class="col-lg-2 " style="box-shadow:rgba(0,0,0,0.35) 0px 5px 15px;">
            <div style="margin-left:30%"><img src="images/menu.jpg" style="width:60%; margin-top:20%;" alt="Sample Photo" /></div>
            <nav>
              <ul style="font-size:15px">
                <li><a style="color:black" href="Accueil.aspx">Clients</a></li>
                <li  style="background-color:cornflowerblue;"> <a style="color:white" href="Commande.aspx">Commandes</a></li>
                <li> <a style="color:black" href="Produits.aspx">Produits</a></li>
                <li>contact</li>
              </ul>
            </nav>

            <img src="images/image.jpg" style="width:100%; margin-top:20%" alt="Sample Photo" />
        </div>
        <div class="col-lg-10">
                <div class="col-md-12" style="background;color:mediumblue;letter-spacing:5px;text-shadow:rgba(0,0,0,0.35) 0px 5px 10px; font-size:30px ; font-family:Algerian; text-align:center">Gestion des commandes</div>
        
                <form class="row form-group" id="form1" runat="server" style="margin-top:1%;">
                    <div class="col-md-12">
                    <fieldset style="border:0px solid black; box-shadow:rgba(0, 0, 0, 0.35) 0px 5px 15px;">
                         <center>
                        <legend style="font-weight:bold">Ajout de produits</legend>
                        </center>

                    <table class="table table-responsive alert-light align-self-center" style="border-collapse:collapse;" >
                       
                        <tr>
                            <td style="font-family:cursive">Customer ID</td>
                            <td>
                                <asp:DropDownList class="form-control" id="CustomerList" runat="server">

                                </asp:DropDownList>
                            </td>

                        
                            <td style="font-family:cursive">Employe ID</td>
                            <td>
                                <asp:DropDownList Class="form-control" id="EmployeList" runat="server">

                                </asp:DropDownList>
                            </td>
                      
                            <td style="font-family:cursive">Order Date</td>
                            <td>
                                <input class="form-control" ID="OrderDate" runat="server" type="datetime-local"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family:cursive">Required Date</td>
                            <td>
                                <input class="form-control" ID="RequiredDate" runat="server" type="datetime-local"/>
                            </td>
                            <td style="font-family:cursive">Freight:</td>
                            <td>
                                <input class="form-control" type="number" min="0" id="freight" runat="server" />
                            </td>
                            <td style="font-family:cursive">Product Name:</td>
                            <td>
                                <asp:DropDownList Class="form-control" id="ProduitList1" AutoPostBack="True" runat="server">

                                </asp:DropDownList>
                            </td>
                                                          
                        </tr>
                        <tr>
                            <td style="font-family:cursive">Prix Unitaire:</td>
                            <td>
                                <input class="form-control" type="number" id="prixu" runat="server" min="0"/>
                            </td>
                            <td style="font-family:cursive">Quantite:</td>
                            <td>
                                <input class="form-control" type="number" id="quantite" min="0" runat="server" />
                            </td>
                            <td style="font-family:cursive">Discount:</td>
                            <td>
                                <input class="form-control" type="number" id="discount" min="0" runat="server" />
                            </td>
                        </tr>
                      
                      

                    </table>
                        <div class="float-lg-right" style="margin-right:15%; margin-bottom:2%;"><asp:Button ID="Button1" runat="server" class="alert-primary" Text="Ajouter" OnClick="ajouter_Click"/></div>
                         <div class="col-md-12 container" id="commande_add" style="margin-bottom:3%">
                        <br />
                         </div>
                        
                        <div style="font-size:20px; font-family:Algerian; text-align:center; margin-bottom:2%"><asp:Literal ID="text" runat="server" /></div>
                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" >
                            <AlternatingRowStyle BackColor="White" />
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
                        
                        <div class="float-lg-right" style="margin-right:15%; margin-bottom:2%; margin-top:2%"><asp:Button ID="Button2" Visible="false"  runat="server" class="alert-success" Text="Valider commandes" OnClick="insert_Click" /></div>
                        <div class="float-lg-left" style="margin-left:15%; margin-bottom:2%; margin-top:2%"><asp:Button ID="Button3" Visible="false"  runat="server" class="alert-danger" Text="Annuler commandes" OnClick="annule_Click" /></div>
                      </div>
                    
                     </fieldset>
                            
                   

                     <div class="container" style="margin-top:3%">
                         <div class="row">
                            <div class="float-lg-right col-lg-6"><p style="font-size:22px; font-weight : bold; text-align:right; margin-top:5px; ">Commandes de : </p></div>
                            <div class="col-lg-3" style="font-size:20px; float:left; width=10%"><asp:DropDownList Font-Size="Medium" Font-Bold="true" class="form-control" id="Search" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="CompanyName" DataValueField="CustomerID">
                             </asp:DropDownList></div>
                         </div>
                         <div style="margin :0 40% 0 40%" class="row">
                             
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [CustomerID], [CompanyName] FROM [Customers]"></asp:SqlDataSource>
                         </div>

                         <div style="width:100%; overflow:auto; margin:3%; box-shadow:rgba(0, 0, 0, 0.35) 0px 5px 15px;">

                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="OrderID" AllowPaging="True" AllowSorting="True" OnRowDeleting="GridView1_RowDeleting"  >
                                <AlternatingRowStyle BackColor="White" />
                                
                                
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" InsertVisible="False" />
                                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                                    <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" SortExpression="ShippedDate" />
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
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL))" InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [ShippedDate]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @ShippedDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [ShippedDate] FROM [Orders] WHERE ([CustomerID] = @CustomerID)" UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [EmployeeID] = @EmployeeID, [OrderDate] = @OrderDate, [ShippedDate] = @ShippedDate WHERE [OrderID] = @original_OrderID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([EmployeeID] = @original_EmployeeID) OR ([EmployeeID] IS NULL AND @original_EmployeeID IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([ShippedDate] = @original_ShippedDate) OR ([ShippedDate] IS NULL AND @original_ShippedDate IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                                        <asp:Parameter Name="original_CustomerID" Type="String" />
                                        <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                                        <asp:Parameter Name="original_ShippedDate" Type="DateTime" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="CustomerID" Type="String" />
                                        <asp:Parameter Name="EmployeeID" Type="Int32" />
                                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                                        <asp:Parameter Name="ShippedDate" Type="DateTime" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Search" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="CustomerID" Type="String" />
                                        <asp:Parameter Name="EmployeeID" Type="Int32" />
                                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                                        <asp:Parameter Name="ShippedDate" Type="DateTime" />
                                        <asp:Parameter Name="original_OrderID" Type="Int32" />
                                        <asp:Parameter Name="original_CustomerID" Type="String" />
                                        <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                                        <asp:Parameter Name="original_ShippedDate" Type="DateTime" />
                                    </UpdateParameters>
                             </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString14 %>" DeleteCommand="DELETE FROM [Order Details] WHERE [OrderID]=@OrderID; DELETE FROM Orders WHERE [OrderID]=@OrderID" SelectCommand="SELECT [Order Details].*, Orders.* FROM [Order Details] INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID " UpdateCommand="UPDATE [Order Details] SET [Quantity]=@Quantity where [OrderID]=@OrderID; UPDATE Orders SET [OrderDate]=@OrderDate,[RequiredDate]=@RequiredDate,[ShipVia]=@ShipVia,[Freight]=@Freight,[ShipName]=@ShipName,[ShipAddress]=@ShipAddress,[ShipCity]=@ShipCity,[ShipRegion]=@ShipRegion,[ShipPostalCode]=@ShipPostalCode,[ShipCountry]=@ShipCountry where [OrderID]=@OrderID"></asp:SqlDataSource>
                                </div>
                        </div>

                    
                      
                </form>

    </div>
   </div>
</body>
</html>
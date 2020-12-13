<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produits.aspx.cs" Inherits="ClientCommandeWeb.Produits1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Produits</title>
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
        <div class="col-lg-2 " style="box-shadow:rgba(0,0,0,0.35) 0px 5px 15px; height : 820px">
            <div style="margin-left:30%"><img src="images/menu.jpg" style="width:60%; margin-top:20%;" alt="Sample Photo" /></div>
            <nav>
              <ul style="font-size:15px">
                <li><a style="color:black" href="Accueil.aspx">Clients</a></li>
                <li> <a style="color:black" href="Commande.aspx">Commandes</a></li>
                <li  style="background-color:cornflowerblue; "> <a style="color:white" href="Produits.aspx">Produits</a></li>
                <li>contact</li>
              </ul>
            </nav>

            <img src="images/image.jpg" style="width:100%; margin-top:20%" alt="Sample Photo" />
        </div>
        <div class="col-lg-10">
        <div class="col-md-12" style="background;color:mediumblue;letter-spacing:5px;text-shadow:rgba(0,0,0,0.35) 0px 5px 10px; font-size:30px ; font-family:Algerian; text-align:center">Gestion des produits</div>
        <form id="form2" class="form-group" runat="server"  style="margin-top:2%; margin-left:3%">
            <div class="row" style="margin-top:2%;">

            <div class="col-md-4 col-sm-12" style="box-shadow:rgba(0, 0, 0, 0.35) 0px 5px 15px; height:80%">
                    <p style="font-size: 20px;font-weight:bold; margin-top:5%; text-align:center">Ajout de produit</p>
                        <table class="table table-responsive" >
                            <tr>    
                                <td style="font-family:cursive">ProductName</td>    
                                <td>    
                                    <asp:TextBox class="form-control"  ID="productName" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td style="font-family:cursive">SupplierID</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="supplierID" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td style="font-family:cursive">CategorieID</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="categorieID" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td style="font-family:cursive">QuantityPerUnit</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="QuantityPerUnit" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td style="font-family:cursive">UnitPrice</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="unitPrice" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td style="font-family:cursive">UnitsInStock</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="UnitsInStock" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td style="font-family:cursive">Region</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="Region" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td style="font-family:cursive">UnitsOnOrder</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="UnitsOnOrder" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td style="font-family:cursive">ReorderLevel</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="reoderLevel" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td style="font-family:cursive">Discontinued</td>    
                                <td>    
                                    <asp:TextBox class="form-control" ID="discontinued" type="number" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>    
                                    <asp:Button ID="insert" runat="server" class="alert-info btn-danger" Text="Annuler" />  
                                </td>
                                <td>    
                                    <asp:Button ID="annule" runat="server" class="alert-info btn-primary float-xl-right" Text="Ajouter" />  
                                </td>
                            </tr>
                            
                        </table>
                </div>
                <div class="col-md-8">
                        <div style="width:100%; overflow:auto; height:21%; box-shadow:rgba(0, 0, 0, 0.35) 0px 5px 15px;">
                            <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                                <AlternatingRowStyle BackColor="White" />
                                
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                    <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
                                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
                                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                                    <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                                    <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
                                    <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
                                    <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString15 %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued]) VALUES (@ProductName, @SupplierID, @CategoryID, @QuantityPerUnit, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @ReorderLevel, @Discontinued)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierID] = @SupplierID, [CategoryID] = @CategoryID, [QuantityPerUnit] = @QuantityPerUnit, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [ReorderLevel] = @ReorderLevel, [Discontinued] = @Discontinued WHERE [ProductID] = @ProductID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ProductID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="SupplierID" Type="Int32" />
                                    <asp:Parameter Name="CategoryID" Type="Int32" />
                                    <asp:Parameter Name="QuantityPerUnit" Type="String" />
                                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                                    <asp:Parameter Name="UnitsInStock" Type="Int16" />
                                    <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                                    <asp:Parameter Name="ReorderLevel" Type="Int16" />
                                    <asp:Parameter Name="Discontinued" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="SupplierID" Type="Int32" />
                                    <asp:Parameter Name="CategoryID" Type="Int32" />
                                    <asp:Parameter Name="QuantityPerUnit" Type="String" />
                                    <asp:Parameter Name="UnitPrice" Type="Decimal" />
                                    <asp:Parameter Name="UnitsInStock" Type="Int16" />
                                    <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                                    <asp:Parameter Name="ReorderLevel" Type="Int16" />
                                    <asp:Parameter Name="Discontinued" Type="Boolean" />
                                    <asp:Parameter Name="ProductID" Type="Int32" />
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

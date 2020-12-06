<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produits.aspx.cs" Inherits="ClientCommandeWeb.Produits1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Produits</title>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
            <a class="navbar-brand" href="#">E-Commerce</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Accueil.aspx">Accueil <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Commande.aspx">Commande</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Produits.aspx">Produit</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <form id="form2" class="form-group" runat="server"  style="margin-top:2%">
            <div class="row" style="margin-top:2%;">

            <div class="col-md-4 col-sm-12">
                    <p style="font-size: 20px;font-weight:bold">Ajout de produit</p>
                        <table class="table table-responsive">
                            <tr>    
                                <td>ProductName</td>    
                                <td>    
                                    <asp:TextBox  ID="productName" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td>SupplierID</td>    
                                <td>    
                                    <asp:TextBox ID="supplierID" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td>CategorieID</td>    
                                <td>    
                                    <asp:TextBox ID="categorieID" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>QuantityPerUnit</td>    
                                <td>    
                                    <asp:TextBox ID="QuantityPerUnit" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td>UnitPrice</td>    
                                <td>    
                                    <asp:TextBox ID="unitPrice" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td>UnitsInStock</td>    
                                <td>    
                                    <asp:TextBox ID="UnitsInStock" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Region</td>    
                                <td>    
                                    <asp:TextBox ID="Region" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>UnitsOnOrder</td>    
                                <td>    
                                    <asp:TextBox ID="UnitsOnOrder" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>ReorderLevel</td>    
                                <td>    
                                    <asp:TextBox ID="reoderLevel" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Discontinued</td>    
                                <td>    
                                    <asp:TextBox ID="discontinued" type="number" runat="server" />    
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
                        <div style="width:100%; overflow:auto; height:16%;">
                            <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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

                                <Columns>
                                    <asp:ButtonField ButtonType="Button"  CommandName="Delete" HeaderText="Supprimer" ShowHeader="True" Text="supprimer" />
                                </Columns>
                                <Columns>
                                    <asp:ButtonField ButtonType="Button"  CommandName="Edit" HeaderText="Modifier" ShowHeader="True" Text="modifier" />
                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </form>
    </div>
    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Commande.aspx.cs" Inherits="ClientCommandeWeb.Commande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Commande</title>
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
                        <a class="nav-link" href="#">Produit</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        
                <form class="row form-group" id="form1" runat="server" style="margin-top:1%;">
                    <div class="col-md-5">
                    <table class="table table-responsive alert-light align-self-center" style="border-collapse:collapse; border:2px solid black;">
                        <tr>
                            <td>OrderId</td>
                            <td><asp:TextBox ID="TextBox2" Class="form-control" runat="server" placeholder="sara" ReadOnly/></td>
                        </tr>
                        <tr>
                            <td>CustomerID</td>
                            <td>
                                <asp:DropDownList id="CustomerList" AutoPostBack="True" runat="server">

                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>EmployeID</td>
                            <td>
                                <asp:DropDownList id="EmployeList" AutoPostBack="True" runat="server">

                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>OrderDate</td>
                            <td>
                                <input ID="orderdate1" runat="server" type="datetime-local"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-md-7" style="height: 100px;">
                    <fieldset style="border: solid;">
                        <center>
                        <legend>Ajouter des produits</legend>
                        </center>
                        <table class="table table-responsive alert-light align-self-center">
                            <tr>
                                <td>Freight:</td>
                                <td>
                                    <input type="number" min="0" id="freight" runat="server" />
                                </td>
                                <td>Product Name:</td>
                                <td>
                                    <asp:DropDownList id="produitname" AutoPostBack="True" runat="server">

                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Prix Unitaire:</td>
                                <td>
                                    <input type="number" id="prixu" runat="server" min="0"/>
                                </td>
                                <td>Quantite:</td>
                                <td>
                                    <input type="number" id="quantite" min="0" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Discount:</td>
                                <td>
                                    <input type="number" id="discount" min="0" runat="server" />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Button ID="ajouter" runat="server" class="alert-primary" Text="Ajouter" OnClick="ajouter_Click"/>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </div>
                    <div class="col-md-12">
                        <br /><br />
                        <legend>Listes des produit ajouter :</legend>

                        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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
                        
                        

                    </div>

                    <div class="col-md-4" style="margin-top:1%;">
                        <asp:Button ID="insert" runat="server" class="alert-success" Text="INSERER" OnClick="insert_Click" />
                    </div>

                </form>
            
    
</body>
</html>

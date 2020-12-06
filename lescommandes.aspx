<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lescommandes.aspx.cs" Inherits="ClientCommandeWeb.lescommandes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Scripts/jquery-3.0.0.js" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Commande</title>

</head>
<body>
    <div class="container-fluid">
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
        
                <form class="row form-group" id="form1" runat="server" style="margin-top:1%;">
                   
                    <div class="container list_command" >
                        <div class="row">
                        <div class="col-md-8" style="font-size:30px; font-weight:bold">Liste des commandes</div>
                        <button><a  href="Commande.aspx">Ajouter commande</a></button>
                        </div>
                        <div style="width:100%; overflow:auto; height:3%; margin-top:2%;">
                            
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" >
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
                
                    
                </form>
            
    
</body>
</html>

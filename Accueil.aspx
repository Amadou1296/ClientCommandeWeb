<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="ClientCommandeWeb.Accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Accueil</title>
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
                            <a class="nav-link" href="#">Accueil <span class="sr-only">(current)</span></a>
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

            <form id="form1" class="form-group" runat="server">
                <div class="row" style="margin-top:1%;">
                    <div class="col-md-4 col-sm-12">
                        <table class="table table-responsive">
                            <tr>    
                                <td>CustomerID</td>    
                                <td>    
                                    <asp:TextBox  ID="CustomerID" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td>CompanyName</td>    
                                <td>    
                                    <asp:TextBox ID="CompanyName" runat="server" />    
                                </td>    
                            </tr>    
                            <tr>    
                                <td>ContactName</td>    
                                <td>    
                                    <asp:TextBox ID="ContactName" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>ContactTitle</td>    
                                <td>    
                                    <asp:TextBox ID="ContactTitle" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td>Address</td>    
                                <td>    
                                    <asp:TextBox ID="Address" runat="server" />    
                                </td>    
                            </tr> 
                            <tr>    
                                <td>City</td>    
                                <td>    
                                    <asp:TextBox ID="City" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Region</td>    
                                <td>    
                                    <asp:TextBox ID="Region" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>PostalCode</td>    
                                <td>    
                                    <asp:TextBox ID="PostalCode" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Country</td>    
                                <td>    
                                    <asp:TextBox ID="Country" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Phone</td>    
                                <td>    
                                    <asp:TextBox ID="Phone" type="number" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td>Fax</td>    
                                <td>    
                                    <asp:TextBox ID="Fax" type="number" runat="server" />    
                                </td>    
                            </tr>
                            <tr>    
                                <td></td>    
                                <td>    
                                    <asp:Button ID="insert" runat="server" class="alert-info" Text="INSERER" OnClick="insert_Click" />  
                                </td>    
                            </tr>
                        </table>
                    </div>

                     <div class="col-md-8">
                        <div style="width:100%; overflow:auto; height:11%;">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
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
                                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Supprimer" ShowHeader="True" Text="supprimer" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </form>
        </div> 

    </body>
</html>

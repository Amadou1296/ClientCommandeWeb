<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Commande.aspx.cs" Inherits="ClientCommandeWeb.Commande" %>

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
                    <div class="col-md-12">
                    <fieldset style="border:1px solid black;">
                         <center>
                        <legend>Ajouter des produits</legend>
                        </center>

                    <table class="table table-responsive alert-light align-self-center" style="border-collapse:collapse;" >
                       
                        <tr>
                            <td style="font-family:cursive">Customer ID</td>
                            <td>
                                <asp:DropDownList class="form-control" id="CustomerList" AutoPostBack="True" runat="server">

                                </asp:DropDownList>
                            </td>

                        
                            <td style="font-family:cursive">Employe ID</td>
                            <td>
                                <asp:DropDownList Class="form-control" id="EmployeList" AutoPostBack="True" runat="server">

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
                        <legend style="font-size:20px; font-family:Algerian; text-align:center"><asp:Literal ID="text" runat="server" /></legend>

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
                        <div class="float-lg-right" style="margin-right:15%; margin-bottom:2%; margin-top:2%"><asp:Button ID="Button2" Visible="false"  runat="server" class="alert-success" Text="Valider commandes" OnClick="insert_Click" /></div>
                    </div>
                    
                     </fieldset>
                </div>
                
                   
                     <div class="container" >
                            <p style="font-size:30px;font-family:Algerian; font-weight : bold; text-align:center; text-decoration:underline; margin-top:5px">Liste des commandes</p>
                            <div style="width:100%; overflow:auto; height:500px; margin-top:2%;">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%"  OnRowDeleted="gridview_delete" OnRowUpdating="gridview_updating"
                                 OnRowEditing="gridview_edit" OnRowUpdated="gridview_update" OnRowCancelingEdit="gridview_cancel">
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
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button Text="Supprimer"  ForeColor="Red"  Font-Bold="true" runat="server" CommandName="Delete" OnClick="Supprimer"/>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Button BackColor="White" ForeColor="Green" Font-Bold="true" Text="Annuler" runat="server" OnClick="Annuler"/>
                                        </EditItemTemplate>
                                        
                                        
                                    </asp:TemplateField>
                                </Columns>
                               <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button Text="Editer" ForeColor="Green"  Font-Bold="true" runat="server" CommandName="Edit"  />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Button BackColor="White" ForeColor="Green" Font-Bold="true" Text="Modifier" runat="server" OnClick="Modifier"/>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                                </div>
                        </div>

                    
                </form>
            
    
</body>
</html>
<script>

        $(".dc").click(function () {
            $(".list_command").slideDown();
        });

</script>
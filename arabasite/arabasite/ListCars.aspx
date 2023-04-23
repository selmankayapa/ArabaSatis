﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="arabasite.ListCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <form id="form1" runat="server">
   
         <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="Page_Load">
             <ItemTemplate>
                 <table class="nav-justified">
                     <tr>
                         <td style="height: 21px">
                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                             &nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Image ID="Image1" runat="server" Height="243px" ImageUrl='<%# Eval("CarPhoto") %>' Width="457px" />
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarDescriptions") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPrice") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    
    
    </form>
</asp:Content>

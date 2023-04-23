 <%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="arabasite.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified" style="width: 94%; height: 482px">
        <tr>
            <td style="height: 380px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 219px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 219px">Araba Modeli</td>
                        <td>
                            <asp:TextBox ID="tboxModel" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarModel") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">raba Fotoğrafı</td>
                        <td>
                            <asp:TextBox ID="tboxPhoto" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">Araba Yakıt Tipi : </td>
                        <td>
                            <asp:TextBox ID="tboxFuel" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">Araç Satıcısı :</td>
                        <td>
                            <asp:TextBox ID="tboxseller" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarSeller") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">İletişim Numarası :</td>
                        <td>
                            <asp:TextBox ID="tboxcontact" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarContact") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">Araç Fiyatı : </td>
                        <td>
                            <asp:TextBox ID="tboxprice" runat="server" Height="21px" ReadOnly="True" Text='<%# Eval("CarPrice") %>' Width="139px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 219px">Açıklama :<br />
                            <br />
                        </td>
                        <td>
                            <asp:TextBox ID="tboxdescription" runat="server" Height="151px" ReadOnly="True" Text='<%# Eval("CarDescriptions") %>' TextMode="MultiLine" Width="214px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 380px"></td>
        </tr>
        <tr>
            <td>
                <table class="nav-justified">
                    <tr>
                        <td class="modal-sm" style="width: 216px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
             <a href ="ApproveCars.aspx?carid<%#Eval("CarID") %>=Eval("CarID")"> <div class ="btn btn-danger">Onayla</div></a>
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="border-bottom-style: solid; border-bottom-width: medium">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

            </ItemTemplate>

        </asp:DataList>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="addCars.aspx.cs" Inherits="arabasite.addCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="height: 380px">
                <form id="form1" runat="server">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 219px">Araba Markasını Seçiniz : </td>
                            <td>
                                <asp:DropDownList ID="comboBox" runat="server" Height="16px" Width="151px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">Araba Modelini Yazınız : </td>
                            <td>
                                <asp:TextBox ID="tboxModel" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">raba Fotoğraf Linki : </td>
                            <td>
                                <asp:TextBox ID="tboxPhoto" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">Araba Yakıt Tipi : </td>
                            <td>
                                <asp:TextBox ID="tboxFuel" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">Araç Satıcısı :</td>
                            <td>
                                <asp:TextBox ID="tboxseller" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">İletişim Numarası :</td>
                            <td>
                                <asp:TextBox ID="tboxcontact" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">Araç Fiyatı : </td>
                            <td>
                                <asp:TextBox ID="tboxprice" runat="server" Height="21px" Width="139px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 219px">Açıklama :<br />
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="tboxdescription" runat="server" Height="151px" TextMode="MultiLine" Width="214px"></asp:TextBox>
                                <asp:Button ID="btnSend" runat="server" Height="79px" OnClick="btnSend_Click" Text="İlanı Gönder" Width="211px" />
                                <br />
                            </td>
                        </tr>
                    </table>
                </form>
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
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

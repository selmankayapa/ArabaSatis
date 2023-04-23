<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="arabasite.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>MESAJLAR<br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" >
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td>Gönderen Kişi :
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Mail Adresi :
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Mesaj : </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="217px" ReadOnly="True" Text='<%#Eval("ContactMessage") %>' TextMode="MultiLine" Width="500px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <a href='MessageDelete.aspx?id=<%#Eval("ContactID") %>'><div class ="btn btn-danger">Sil</div> </a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="arabasite.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi Giriniz. "></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="tboxMail" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="tboxMessage" runat="server" Height="347px" TextMode="MultiLine" ToolTip="Sorunuzu veya Şikayetinizi Yazınız." Width="702px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSend" runat="server" Height="58px" OnClick="btnSend_Click" Text="Mesajı Gönder" Width="117px" />
    <br />
</form>
</asp:Content>

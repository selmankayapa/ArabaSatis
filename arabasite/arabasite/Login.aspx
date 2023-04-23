<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="arabasite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
        <asp:TextBox ID="tboxMail" runat="server" Height="24px" TextMode="Email" Width="219px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="tboxPassword" runat="server" Height="18px" TextMode="Password" Width="214px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Height="59px" OnClick="btnLogin_click" Text="Giriş Yap" Width="154px" />
    </form>
</asp:Content>

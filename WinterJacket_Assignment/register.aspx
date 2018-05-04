<%@ Page Title="Winter Jacket Michael Kors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WinterJacket_Assignment.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    R E G I S T R A T I O N&nbsp;&nbsp; F O R M 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="lblUserName" runat="server" Text="UserName:"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
        <br />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

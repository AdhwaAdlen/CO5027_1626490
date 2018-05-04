<%@ Page Title="Winter Jacket Michael Kors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WinterJacket_Assignment.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server"> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    W E L C O M E&nbsp;&nbsp; T O&nbsp;&nbsp; A D M I N 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form1" runat="server">
        <br />
        <asp:Button ID="btnProductList" runat="server" Text="Product List" OnClick="btnProductList_Click" />
        <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
        <asp:Button ID="btnEdit" runat="server" Text="Edit Product" OnClick="btnEdit_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        <br />
        <br />
    </form>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

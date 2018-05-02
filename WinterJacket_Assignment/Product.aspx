﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WinterJacket_Assignment.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Product Details
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ImageLink:
            <asp:TextBox ID="ImageLinkTextBox" runat="server" Text='<%# Bind("ImageLink") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="CurrentImage" runat="server" ImageUrl='<%# Eval("ImageLink") %>' Height="200px" Width="200px"/><br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:Label ID="ProductDetailsLabel" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ImageLink:
            <asp:Label ID="ImageLinkLabel" runat="server" Text='<%# Bind("ImageLink") %>' />
            <br />

        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626490_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            <asp:DropDownList ID="ddlQuantity" runat="server" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnPurchase" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
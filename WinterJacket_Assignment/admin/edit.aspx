<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WinterJacket_Assignment.admin.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    E D I T
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <form id="form1" runat="server">
        <asp:FormView ID="FormView1" runat="server" BackColor="#CC99FF" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Edit">
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
                <br />
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:LinkButton ID="SaveBtn" runat="server" OnClick="SaveBtn_Click">Save Image</asp:LinkButton>
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("ImageLink") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
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
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626490_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ImageLink] = @original_ImageLink) OR ([ImageLink] IS NULL AND @original_ImageLink IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductID], [ProductName], [ProductDetails], [ProductQuantity], [ProductPrice], [ImageLink]) VALUES (@ProductID, @ProductName, @ProductDetails, @ProductQuantity, @ProductPrice, @ImageLink)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductDetails] = @ProductDetails, [ProductQuantity] = @ProductQuantity, [ProductPrice] = @ProductPrice, [ImageLink] = @ImageLink WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ImageLink] = @original_ImageLink) OR ([ImageLink] IS NULL AND @original_ImageLink IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ImageLink" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ImageLink" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ImageLink" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ImageLink" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

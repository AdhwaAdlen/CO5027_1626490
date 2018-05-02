<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WinterJacket_Assignment.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Winter Jacket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
    Home page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Jacket
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:Repeater ID="ProductItem" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>

            <ItemTemplate>
                <table style="margin:0 auto">
                    <tr>
                        <td>
                            <a href="<%#Eval("ProductId","Product.aspx?Id={0}") %>">
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ImageLink") %>' Wudth="200px" Height="200px" />
                                <p></p>
                            <%#Eval("ProductName") %><p>Price:$<%#Eval("ProdcutPrice") %></p>
                            </a>
                            <p></p>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626490_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductID] = @ProductID)" ConflictDetection="CompareAllValues" ProviderName="<%$ ConnectionStrings:db_1626490_co5027_asgConnectionString.ProviderName %>" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

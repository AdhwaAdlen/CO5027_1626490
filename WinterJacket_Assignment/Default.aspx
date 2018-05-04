<%@ Page Title="Winter Jacket Michael Kors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WinterJacket_Assignment.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Winter Jacket
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    A U G U S T &nbsp;&nbsp;    P R O M O T I O N S 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:Repeater ID="DisplayProduct" runat="server" DataSourceID="SqlDataSource1">
            
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>

            <ItemTemplate>
<!-------------------This code is adapted from https://stackoverflow.com/questions/37502415/how-to-display-products-using-repeater-control-asp-net!-------------->
                <div class="span3" style="display:inline-block;" runat="server">
                    <div class="products">
                            <a href="<%#Eval("ProductId","Product.aspx?Id={0}") %>">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ImageLink") %>' Width="200px" Height="200px" AlternateText="Winter Jacket Image" />
                                <br />
                                <%#Eval("ProductName") %><p>Price$<%#Eval("ProductPrice") %></p>
                            </a>
                            <p></p>
                            </div>
                       </div>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626490_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    </form>      
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Customer_Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            height: 234px;
        }
        .style7
        {
            height: 52px;
        }
        .style8
        {
            height: 234px;
            width: 283px;
        }
    .style11
    {
        height: 361px;
        width: 825px;
    }
        .style12
        {
            height: 234px;
            width: 206px;
        }
        .style14
        {
            height: 531px;
            width: 134px;
        }
        .style15
        {
            width: 176px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:86%;" frame="box" bgcolor="#FFFFCC">
        <tr>
            <td class="style15" colspan="2" align="left" valign="top">
          
                
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="216px"></asp:TextBox>
<asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                    runat="server" Height="33px" 
                    Width="212px" BackColor="White" Font-Bold="True" Font-Italic="True" 
                    ForeColor="#FF9900">
                </asp:DropDownList>
                &nbsp;<asp:Button ID="Button1" runat="server" 
                    BackColor="#FF9900" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" 
                    Font-Italic="True" onclick="Button1_Click" Text="Search" />
                </td>
        </tr>
        <tr>
            <td class="style14" align="left" valign="top">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetCategory" TypeName="Customer"></asp:ObjectDataSource>
                <asp:GridView ID="GridView1" runat="server" 
                    BorderColor="#0099FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" DataSourceID="ObjectDataSource1" Font-Bold="True" 
                    Font-Italic="True" ForeColor="#FF9900" GridLines="Horizontal" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    BackImageUrl="~/Customer/Image/687229.jpeg" Width="192px">
                    <RowStyle ForeColor="Red" HorizontalAlign="Left" VerticalAlign="Top" 
                        Wrap="True" />
                    <Columns>
                        <asp:CommandField SelectText="&gt;&gt;&gt;" ShowSelectButton="True" 
                            ButtonType="Image" SelectImageUrl="~/icon/Insert-icon.png">
                            <ControlStyle BorderColor="White" BorderStyle="None" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Medium" Font-Strikeout="True" 
                                Font-Underline="False" ForeColor="Lime" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="Red" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="Lime" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle ForeColor="#FF9900" HorizontalAlign="Left" VerticalAlign="Top" />
                </asp:GridView>
            </td>
            <td class="style11" align="left" valign="top">
                &nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Classic and Currant Products" Font-Italic="True" 
                    Font-Overline="False" Font-Underline="True" ForeColor="#993300"></asp:Label>
                <br />
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    BackColor="#FFFFCC" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" 
                    CellPadding="3" DataSourceID="SqlDataSource3" Font-Italic="True" 
                    HorizontalAlign="Left" 
                    onselectedindexchanged="GridView4_SelectedIndexChanged" 
                    style="margin-left: 0px; margin-top: 28px;" Width="364px" GridLines="None" Height="176px" 
                    ShowHeader="False">
                    <RowStyle ForeColor="#000066" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic">
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                            SortExpression="ProductName" />
                        <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" 
                            SortExpression="SellingPrice" DataFormatString="${0:f}" />
                        <asp:CommandField ButtonType="Image" 
                            SelectImageUrl="~/icon/shopping-cart-icon-small.gif" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#FFCC99" BorderColor="White" BorderStyle="None" 
                        Font-Bold="True" ForeColor="Blue" />
                    <HeaderStyle BackColor="#FF9900" BorderStyle="None" Font-Bold="True" 
                        ForeColor="White" HorizontalAlign="Left" VerticalAlign="Top" 
                        Width="10px" />
                    <EditRowStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopConnectionString %>" 
                    SelectCommand="SELECT [ProductName], [SellingPrice], [pic] FROM [productviews] WHERE ([CategoryID] = @CategoryID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="CategoryID" PropertyName="Text" 
                            Type="Int32" DefaultValue="69" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    BackColor="#FFFFCC" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" 
                    CellPadding="3" DataSourceID="SqlDataSource2" Font-Italic="True" 
                    HorizontalAlign="Left" 
                    onselectedindexchanged="GridView3_SelectedIndexChanged" 
                    style="margin-left: 0px" Width="364px" GridLines="None" Height="176px" 
                    ShowHeader="False">
                    <RowStyle ForeColor="#000066" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic">
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                            SortExpression="ProductName" />
                        <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" 
                            SortExpression="SellingPrice" DataFormatString="${0:f}" />
                        <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" 
                            Visible="False" />
                        <asp:CommandField ButtonType="Image" 
                            SelectImageUrl="~/icon/shopping-cart-icon-small.gif" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#FFCC99" BorderColor="White" BorderStyle="None" 
                        Font-Bold="True" ForeColor="Blue" />
                    <HeaderStyle BackColor="#FF9900" BorderStyle="None" Font-Bold="True" 
                        ForeColor="White" HorizontalAlign="Left" VerticalAlign="Top" 
                        Width="10px" />
                    <EditRowStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="False" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopConnectionString %>" 
                    SelectCommand="SELECT [ProductName], [SellingPrice], [pic] FROM [homedetails]">
                </asp:SqlDataSource>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopSystemConnectionString %>" 
                    SelectCommand="SELECT [ProductName], [SellingPrice], [Description] FROM [Product] WHERE ([CategoryID] = @CategoryID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" DefaultValue="0" Name="CategoryID" 
                            PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
<asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    InsertMethod="GetProducttoCategoryID" SelectMethod="GetProducttoCategoryID" 
                    TypeName="Customer">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="CategoryID" SessionField="caid" 
                            Type="Int32" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


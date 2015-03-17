<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArticleMain.aspx.cs" Inherits="CodeFusion.ArticleMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 793px;
        }
        .auto-style2 {
            height: 164px;
        }
        .auto-style3 {
            width: 793px;
            height: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td><h1>CodeFusion</h1></td>
                    
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    
                    
                </tr>
                
            </table>

        </div>
    <div>
    
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <br />
                </td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" ProviderName="<%$ ConnectionStrings:myConnection.ProviderName %>" SelectCommand="SELECT [articledetail] FROM [TempArticle]"></asp:SqlDataSource>
                </td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" ProviderName="<%$ ConnectionStrings:myConnection.ProviderName %>" SelectCommand="SELECT [id], [articletitle] FROM [ArticleInfo]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:DataGrid ID="DataGrid2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="535px">
                        <AlternatingItemStyle BackColor="White" />
                        <EditItemStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataGrid>
                </td>
                <td>
                    <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="536px" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged">
                        <AlternatingItemStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonColumn CommandName="Select" Text="Select"></asp:ButtonColumn>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    </asp:DataGrid>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="createButton" runat="server" Text="New Article" OnClick="createButton_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

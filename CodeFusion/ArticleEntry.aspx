<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArticleEntry.aspx.cs" Inherits="CodeFusion.ArticleEntry" %>

<!DOCTYPE html>
<script runat="server">

    
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 164px;
        }
        #Text1 {
            width: 304px;
        }
        .auto-style2 {
            width: 339px;
        }
        #TextArea1 {
            width: 313px;
            height: 132px;
        }
        #articleDetailTB {
            width: 316px;
        }
        #articleTitleTB {
            width: 315px;
        }
    </style>
                        <script src="js/tinymce/tinymce.min.js"></script>
                   
                    <script>tinymce.init({ selector: 'detailTextBox' });</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:97%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Article Title:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="titleTextBox" runat="server" Width="310px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Article Detail:</td>
                <td class="auto-style2">

                    <asp:TextBox ID="detailTextBox" runat="server" Height="85px" Width="306px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

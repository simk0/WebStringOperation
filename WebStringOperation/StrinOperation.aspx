<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StrinOperation.aspx.cs" Inherits="WebStringOperation.StrinOperation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <span style="font-weight: bold; color: navy">Рядок </span>
            <br />
            Введіть рядок, наприклад, "man,,woman;child,,,bird")<br />
            <asp:TextBox ID="txtString" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
            <hr />
            <div style="vertical-align: top; border: 1px dotted navy; width: 350px; display: inline-block">
                <span style="font-weight: bold; color: navy">Масив слів з порожніми рядками</span>
                <asp:Button ID="btnArrayWithEmptyWord" runat="server" Text="Вивести"
                    OnClick="btnArrayWithEmptyWord_Click" /><br />

                <asp:Literal ID="ltrArrayWithEmptyWord" runat="server"></asp:Literal>
            </div>
            <div style="vertical-align: top; border: 1px dotted navy; width: 350px; display: inline-block">
                <span style="font-weight: bold; color: navy">Масив слів без порожніх рядків</span>
                <asp:Button ID="btnArrayWithOutEmptyWord" runat="server" Text="Вивести"
                    OnClick="btnArrayWithOutEmptyWord_Click" /><br />
                <asp:Literal ID="ltrArrayWithOutEmptyWord" runat="server"></asp:Literal>
            </div>
        </div>
        </div>
    </form>
</body>
</html>

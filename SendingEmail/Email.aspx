<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="SendingEmail.Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >
        From Email:
        <asp:TextBox ID="from" runat="server"></asp:TextBox><br />
         Password:
        <asp:TextBox ID="pwd" textmode="password" runat="server"></asp:TextBox><br />
        To Email ID:
        <asp:TextBox ID="to" runat="server"></asp:TextBox><br />
        Subject:
        <asp:TextBox ID="subject" runat="server"></asp:TextBox><br />
        Message:
        <asp:TextBox ID="body" textmode="MultiLine" runat="server"></asp:TextBox><br />

        <asp:Button ID="send" runat="server" Text="Send" OnClick="sendbtn_Click" />
    </div>
    </form>
</body>
</html>

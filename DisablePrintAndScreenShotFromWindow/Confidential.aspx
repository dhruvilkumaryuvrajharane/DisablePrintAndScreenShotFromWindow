<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confidential.aspx.cs" Inherits="DisablePrintAndScreenShotFromWindow.Confidential" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
window.onload = function () {
    window.addEventListener('keydown', function (e) {
        if (e.metaKey || e.keyCode === 91 || (e.shiftKey && e.key.toLowerCase() === 's')) {
            e.preventDefault();
            window.location.href = '/Contact.aspx';
        }
    });
};
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top:50px;">
            <h2>Confidential</h2>
            <p>This is a private page. Do not share this information.</p>
        </div>

         <asp:Label ID="lblName" runat="server" Text="Enter your name:" Font-Size="Large"></asp:Label><br /><br />
            <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Font-Size="Large"></asp:Label>
       

    </form>
</body>
</html>

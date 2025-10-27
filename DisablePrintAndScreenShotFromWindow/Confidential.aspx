<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confidential.aspx.cs" Inherits="DisablePrintAndScreenShotFromWindow.Confidential" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
window.onload = function () {

    // Disable right-click
    document.addEventListener('contextmenu', function (e) {
        e.preventDefault();
      });
    


    window.addEventListener('keydown', function (e) {
            if (e.metaKey || e.keyCode === 91 || (e.shiftKey && e.key.toLowerCase() === 's')) {
                e.preventDefault();
                window.location.href = '/Contact.aspx';
            }
            // Check for Ctrl+P or Cmd+P
            else if ((e.ctrlKey && e.key.toLowerCase() === 'p') || (e.metaKey && e.key.toLowerCase() === 'p')) {
                e.preventDefault();
                alert("Printing using Ctrl + P is disabled on this page!");
                return false;
            }// Disable F1–F12, Ctrl, Shift, Alt, PrintScreen, etc.
              else  if (
                    e.key.startsWith("F") ||              // F1–F12
                    e.keyCode === 44 ||                   // PrintScreen
                    e.ctrlKey || e.shiftKey || e.altKey || e.metaKey
                ) {
                    e.preventDefault();
                    alert("Keyboard shortcuts are disabled on this page!");
                    return false;
                }
    });
};
window.addEventListener('blur', function () {
    document.body.style.filter = 'blur(10px)';
});
window.addEventListener('focus', function () {
    document.body.style.filter = 'none';
});

document.addEventListener("visibilitychange", function() {
  if (document.hidden) {
    document.body.classList.add("blurred");
  } else {
    document.body.classList.remove("blurred");
  }

    </script>
    <style>
.blurred {
  filter: blur(20px);
  transition: filter 0.3s ease;
}
</style>

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

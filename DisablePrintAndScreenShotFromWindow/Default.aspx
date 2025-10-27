<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DisablePrintAndScreenShotFromWindow._Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center; margin-top:50px;">
        <asp:Button ID="btnOpenConfidential" runat="server" Text="Open Confidential Page" OnClientClick="openConfidential(); return false;" />
    </div>

    <script type="text/javascript">
        function openConfidential() {
            window.open('Confidential.aspx', '_blank', 'width=600,height=400');
        }
    </script>
</asp:Content>

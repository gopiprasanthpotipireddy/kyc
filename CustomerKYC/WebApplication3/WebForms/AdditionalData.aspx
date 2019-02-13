<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdditionalData.aspx.cs" Inherits="WebApplication3.WebForms.AdditionalData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 id="HD1" Style="text-align:center;color:#3498db">DETAILS</h1>
    <%-- <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center">--%>
        
        <asp:GridView ID="GridView1" runat="server" style=" border-color:#3498db" HorizontalAlign="Center"></asp:GridView> 
    </div> 
    </form>
</body>
</html>

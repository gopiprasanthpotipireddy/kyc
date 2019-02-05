<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanDetails.aspx.cs" Inherits="WebApplication3.WebForms.PanDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
    <div>
        <asp:GridView ID="GridView0" runat="server">
        <columns>
             
                 
             <asp:BoundField runat="server" DataField="CustomerName" HeaderText="CustomerName" />
             <asp:BoundField runat="server" DataField="Age" HeaderText="Age" />
             <asp:BoundField  runat="server" DataField="PanNumber" HeaderText="PanNumber" />
            
            </columns>
            </asp:GridView>
       
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AadharDetails.aspx.cs" Inherits="WebApplication3.WebForms.AadharDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <h1 id="HD1">DETAILS</h1>
            <asp:GridView ID="GridView1" runat="server" >
            <columns>
                 <asp:BoundField runat="server" DataField="AadharNumber" HeaderText="AadharNumber" />
             <asp:BoundField runat="server" DataField="CustomerName" HeaderText="CustomerName" />
             <asp:BoundField DataField="Age" HeaderText="Age" />
             
             <asp:BoundField DataField="Address" HeaderText="Address" />
             <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" />
             <asp:BoundField DataField="EmailId" HeaderText="EmailId" />
            </columns>
                </asp:GridView>
        </div>
    </form>
</body>
</html>

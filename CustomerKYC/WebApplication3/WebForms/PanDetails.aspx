<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanDetails.aspx.cs" Inherits="WebApplication3.WebForms.PanDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
</head>
<body>
    <form id="form1" runat="server" >
   <div>
                     <h1 id="HD1" Style="text-align:center">DETAILS</h1>
        <asp:GridView ID="GridView0" runat="server" style="border-color:orange;position:relative;" HorizontalAlign="Center">
             </asp:GridView>
                   </div> 
     
      <%--  <columns>
              <asp:BoundField  runat="server" DataField="Pan_Number" HeaderText="Pan_Number" />
                 
             <asp:BoundField runat="server" DataField="Name" HeaderText="Name" />
            <asp:BoundField runat="server" DataField="FatherName" HeaderText="FatherName" />
             <asp:BoundField runat="server" DataField="Age" HeaderText="Age" />
            
            
            </columns>--%>
           
       
    
    </form>
</body>
</html>

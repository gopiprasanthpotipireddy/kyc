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
        
        <asp:GridView ID="GridView1" runat="server" style=" border-color:#3498db" HorizontalAlign="Center" AutoGenerateColumns="false">
            <Columns>
             <asp:BoundField runat="server" DataField="Applicant_ID" HeaderText="Applicant_ID" />
             <asp:BoundField runat="server" DataField="Address" HeaderText="Address" />
             <asp:BoundField DataField="City" HeaderText="City" />
             <asp:BoundField DataField="State" HeaderText="State" />
             <asp:BoundField DataField="PIN" HeaderText="PIN" />
             <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
             <asp:BoundField DataField="DOB" HeaderText="DOB" DataFormatString="{0:d}" />
             <asp:BoundField DataField="MOBILENO" HeaderText="MOBILENO" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                </Columns>
        </asp:GridView> 
    </div> 
    </form>
</body>
</html>

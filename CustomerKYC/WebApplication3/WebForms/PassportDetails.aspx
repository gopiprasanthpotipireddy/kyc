<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassportDetails.aspx.cs" Inherits="WebApplication3.WebForms.PassportDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <title></title>
    <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
             <h1 id="HD1" Style="text-align:center">DETAILS</h1>
                        <asp:GridView ID="GridView1" runat="server" style="border-color:cornflowerblue;">
                             </asp:GridView>
         

      </div>

         
                
                <%--<Columns>
                     <asp:BoundField runat="server" DataField="PassportNumber" HeaderText="PassportNumber" />
             <asp:BoundField runat="server" DataField="Name" HeaderText="Name" />
                    <asp:BoundField runat="server" DataField="Surname" HeaderText="Surname" />
                    <asp:BoundField runat="server" DataField="Nationality" HeaderText="Nationality" />
                    <asp:BoundField runat="server" DataField="Address" HeaderText="Address" />
                    <asp:BoundField runat="server" DataField="CountryCode" HeaderText="CountryCode" />
                    <asp:BoundField runat="server" DataField="DOB" HeaderText="DOB" />
                    <asp:BoundField runat="server" DataField="PlaceOfBirth" HeaderText="PlaceOfBirth" />
                    <asp:BoundField runat="server" DataField="PlaceOfIssue" HeaderText="PlaceOfIssue" />
                    <asp:BoundField runat="server" DataField="DateOfIssue" HeaderText="DateOfIssue" />
                    <asp:BoundField runat="server" DataField="DateOfExpiry" HeaderText="DateOfExpiry" />
                    <asp:BoundField runat="server" DataField="FatherName" HeaderText="FatherName" />
                    <asp:BoundField runat="server" DataField="MotherName" HeaderText="MotherName" />
                    <asp:BoundField runat="server" DataField="SpouseName" HeaderText="SpouseName" />
                      <asp:BoundField runat="server" DataField="Gender" HeaderText="Gender" />

           
                </Columns>--%>
           
        
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayInfo.aspx.cs" Inherits="WebApplication3.WebForms.DisplayInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    
     <div>
         <h1 id="HD1" Style="text-align:center">DETAILS</h1>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center">
      
         <columns>
             <asp:BoundField runat="server" DataField="Applicant_ID" HeaderText="Applicant_ID" />
             <asp:BoundField runat="server" DataField="FirstName" HeaderText="FirstName" />
             <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" />
             <asp:BoundField DataField="PAN_Number" HeaderText="PAN_Number" />
             <asp:BoundField DataField="AADHAR_Number" HeaderText="AADHAR_Number" />
             <asp:BoundField DataField="PASSPORT_Number" HeaderText="PASSPORT_Number" />
             <asp:BoundField DataField="PAN_Status" HeaderText="PAN_Status" />
             <asp:BoundField DataField="AADHAR_Status" HeaderText="AADHAR_Status" />
             <asp:BoundField DataField="PASSPORT_Status" HeaderText="PASSPORT_Status" />
             <asp:BoundField DataField="OVERALL_Status" HeaderText="OVERALL_Status" />
              <asp:BoundField DataField="Remarks" HeaderText="Remarks" />
             <asp:TemplateField>
                 <ItemTemplate>
             <asp:Button ID="Edit" runat="server"  Text="Edit" CommandName="CEdit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" /> &nbsp&nbsp&nbsp&nbsp
                      <asp:Button ID="btnAdditional" runat="server" Text="AdditionalInfo" CommandName="CAddInf"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  

                     <script type="text/javascript">
</script> 
                         </div>
                     <%--<asp:LinkButton ID="Update" Text="Edit" runat="server" CommandArgument='<%# Eval("GridView1") %>' />&nbsp&nbsp&nbsp&nbsp
                       <asp:LinkButton ID="Additional" Text="Additional Info" runat="server" CommandArgument='<%# Eval("GridView1") %>' />--%>
                </ItemTemplate>
             </asp:TemplateField>
        </columns>
         </asp:GridView> 
    
    </div>
    </form>
</body>
</html>

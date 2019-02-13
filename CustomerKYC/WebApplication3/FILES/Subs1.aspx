<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Subs1.aspx.cs" Inherits="WebApplication3.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div >
         
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
     
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
              <asp:Button ID="Edit" runat="server" Width="50"    Text="Edit" CommandName="CEdit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" /> &nbsp&nbsp&nbsp&nbsp
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
</asp:Content>

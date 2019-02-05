<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="subs.aspx.cs" Inherits="WebApplication3.WebForms.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">

         <columns>
             <asp:BoundField runat="server" DataField="Applicant_ID" HeaderText="Applicant_ID" />
             <asp:BoundField runat="server" DataField="FirstName" HeaderText="FirstName" />
             <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" />
             <asp:BoundField DataField="PAN_Number" HeaderText="PAN_Number" />
             <asp:BoundField DataField="AADHAR_Number" HeaderText="AADHAR_Number" />
             <asp:BoundField DataField="PASSPORT_Number" HeaderText="PASSPORT_Number" />
             
             
             <asp:TemplateField>
                 <ItemTemplate>
<%--                    
    <asp:Button ID="btnEdit" runat="server" Width="50" Text="Edit" CommandName="CEdit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  &nbsp&nbsp&nbsp&nbsp--%>
                     <div>
                     <a href="Popup.aspx">Edit</a>
                         <a href="Additional.aspx">Additional Info</a>
                      
<%--                      <asp:Button ID="btnSave" runat="server" Width="50" Text="Save" CommandName="CSave" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" /> &nbsp&nbsp&nbsp&nbsp--%>
<%--                      <asp:Button ID="btnAdditional" runat="server" Text="AdditionalInfo" CommandName="CAddInf" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  --%>

                     <script type="text/javascript">

    //function openPopup() {

    //    window.open("Popup.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");
               
    //            }
</script> 
                    
                     
                         </div>
                     <%--<asp:LinkButton ID="Update" Text="Edit" runat="server" CommandArgument='<%# Eval("GridView1") %>' />&nbsp&nbsp&nbsp&nbsp
                       <asp:LinkButton ID="Additional" Text="Additional Info" runat="server" CommandArgument='<%# Eval("GridView1") %>' />--%>

                    
                     
                 </ItemTemplate>
             </asp:TemplateField>

        </columns>
         </asp:GridView>
<%--         <asp:imagebutton id="btnpopup" runat="server" onclientclick="return openPopup()" xmlns:asp="#unknown" /> --%>
       
    </div>
     
    <div>
        <asp:GridView ID="GridView2" runat="server">
         <columns>
             <asp:BoundField runat="server" DataField="ApplicantID" HeaderText="ApplicantID" />
             <asp:BoundField runat="server" DataField="FirstName" HeaderText="FirstName" />
             <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" />
             
             <asp:BoundField DataField="AADHAR_Number" HeaderText="AADHAR_Number" />
             <asp:BoundField DataField="AADHAR_Status" HeaderText="AADHAR_Status" />
              <asp:BoundField DataField="PAN_Number" HeaderText="PAN_Number" />
              <asp:BoundField DataField="PAN_Status" HeaderText="PAN_Status" />
              <asp:BoundField DataField="PASSPORT_Number" HeaderText="PASSPORT_Number" />
              <asp:BoundField DataField="PASSPORT_Status" HeaderText="PASSPORT_Status" />
             <asp:BoundField DataField="OVERALL_Status" HeaderText="OVERALL_Status" />
             </columns>
            </asp:GridView>

    </div>
</asp:Content>

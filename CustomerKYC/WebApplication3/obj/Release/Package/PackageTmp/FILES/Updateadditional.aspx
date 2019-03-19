<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Updateadditional.aspx.cs" Inherits="WebApplication3.WebForms.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         
         <asp:gridview id="AdditionalDetails" runat="server">
              <columns>
             <asp:BoundField runat="server" DataField="ApplicantID" HeaderText="ApplicantID" />
             <asp:BoundField runat="server" DataField="FirstName" HeaderText="FirstName" />
             <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" />
             <asp:BoundField DataField="PAN_Number" HeaderText="PAN_Number" />
             <asp:BoundField DataField="AADHAR_Number" HeaderText="AADHAR_Number" />
             <asp:BoundField DataField="PASSPORT_Number" HeaderText="PASSPORT_Number" />
                  </columns>

         </asp:gridview>    
    </div>
</asp:Content>

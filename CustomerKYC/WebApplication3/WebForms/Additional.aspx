<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Additional.aspx.cs" Inherits="WebApplication3.WebForms.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
<asp:BoundField runat="server" DataField="Applicant_ID" HeaderText="Applicant_ID" />
             <asp:BoundField runat="server" DataField="FirstName" HeaderText="FirstName" />
             <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" />
             <asp:BoundField DataField="PAN_Number" HeaderText="PAN_Number" />
             <asp:BoundField DataField="AADHAR_Number" HeaderText="AADHAR_Number" />
             <asp:BoundField DataField="PASSPORT_Number" HeaderText="PASSPORT_Number" />
            <asp:BoundField DataField="AADHAR_Status" HeaderText="AADHAR_Status" />
            <asp:BoundField DataField="PAN_Status" HeaderText="PAN_Status" />
            <asp:BoundField DataField="PASSPORT_Status" HeaderText="PASSPORT_Status" />
            <asp:BoundField DataField="OVERALL_Status" HeaderText="OVERALL_Status" />


        </Columns>

    </asp:GridView>
        </div>
</asp:Content>

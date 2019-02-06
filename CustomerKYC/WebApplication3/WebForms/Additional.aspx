<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Additional.aspx.cs" Inherits="WebApplication3.WebForms.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="GridView2" runat="server">
        <Columns>
<asp:BoundField runat="server" DataField="Applicant_ID" HeaderText="Applicant_ID" />
             <asp:BoundField runat="server" DataField="Address" HeaderText="Address" />
             <asp:BoundField DataField="City" HeaderText="City" />
             <asp:BoundField DataField="State" HeaderText="State" />
             <asp:BoundField DataField="PIN" HeaderText="PIN" />
             <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
             <asp:BoundField DataField="DOB" HeaderText="DOB" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" />
            


        </Columns>

    </asp:GridView>
        </div>
</asp:Content>

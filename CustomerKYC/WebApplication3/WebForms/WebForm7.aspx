<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication3.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div >
         <asp:GridView ID="GridView1" runat="server"></asp:GridView>
     <asp:Button runat="server" onclick="demo" Text="Button"></asp:Button>   
    </div>
</asp:Content>

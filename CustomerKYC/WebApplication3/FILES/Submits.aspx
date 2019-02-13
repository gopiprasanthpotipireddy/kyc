<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Submits.aspx.cs" Inherits="WebApplication3.WebForm4" %>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
     
</asp:Content>
 --%>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
    #viewSubmits
    {
        display:none;
    }
    #gd1{
        position:relative;
        padding:10%;
        top:20%;
        left:4%;
          
    }
  
     </style>

    

    <h1 style="text-align:center">List of Submissions till date</h1>
<div id="gd1">
<asp:GridView ID="GridView1" runat="server"></asp:GridView>    
<%--<asp:Button runat="server" ID="kiki" onclick="demo" Text="Button"></asp:Button>   --%>
</div>
</asp:Content>

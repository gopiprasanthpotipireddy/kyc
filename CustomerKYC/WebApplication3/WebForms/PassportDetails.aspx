<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassportDetails.aspx.cs" Inherits="WebApplication3.WebForms.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:cornflowerblue;
  padding: 10px;
  text-align: center;
  font-size: 20px;
  color:#791717;
  border-image-width:10px;
 
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 18%;
  height: 800px; /* only for demonstration, should be removed */
  background: #ccc;
  padding-top:100px;
  text-align:left;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding-bottom: 70px;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
  text-align:unset;
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
 
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
  top:0px;
}

/* Style the footer */
footer {
  background-color:cornflowerblue;
  /*padding: 10px;*/
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }

.header img {
  float: left;
  width: 100%;
  height: 90%;
  resize:initial;
  background: #555;
  
  
}

.header h1 {
  position: center;
  top: 18px;
  
}

}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
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

           
                </Columns>
            </asp:GridView>

            </div>
    </div>
    </form>
</body>
</html>

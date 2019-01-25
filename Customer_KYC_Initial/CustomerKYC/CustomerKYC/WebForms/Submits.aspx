<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Submits.aspx.cs" Inherits="CustomerKYC.WebForms.Submits" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
   
</head>
<body>
   
    <form id="form1" runat="server" onload="View_OnClick">
    <div >
  <%-- <a href="AdditionalInfo.aspx" style="font-size:large">Additional Information</a>--%>

           <script type="text/javascript">

    function openPopup() {

        window.open("AdditionalInfo.aspx", "_blank", "WIDTH=1080,HEIGHT=790,scrollbars=no, menubar=no,resizable=yes,directories=no,location=no");
               
                }
</script>

   <asp:imagebutton id="btnpopup" runat="server" onclientclick="return openPopup()" xmlns:asp="#unknown" />
    </div>
     
    </form>
</body>
</html>


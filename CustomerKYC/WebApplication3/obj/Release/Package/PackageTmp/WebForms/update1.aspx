<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update1.aspx.cs" Inherits="WebApplication3.WebForms.update1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type = "text/javascript" >
      function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script>
    <%--<style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1 style="text-align:left;padding-left:250px;color:#3498db;font-family:sans-serif;font-size:larger;">Update your  Details </h1>
        <br />
               
        <table>
           <td>
               
                         <label id="appid" runat="server">Applicant id</label>
                    </td>
                     <td>
                         <input type="text" id="app_id" runat="server"  readonly="true" />
                         
                     </td>
          
         <td>
                         <label id="fname" runat="server">First Name</label>
           
                         
                     </td>

                    <td>
                         <input type="text" id="first_name" runat="server" />
                       </td>
    
          <tr>
                     <td class="auto-style1">
                         <label id="pan" runat="server">Pan Number</label>
                         
                    </td>
                     <td class="auto-style1">
                         <input type="text" runat="server" id="pan_num"  />
                     </td>
               
               <td class="auto-style1">
                         <label id="panstatus" runat="server">PanStatus</label>
                        
                     </td>
                     <td class="auto-style1">
                         <select name="dropdwn" id="Pstat" runat="server">
                             <option selected="Not Initiated" value="NO INITIATED">NOT INITIATED</option>
                             <option value="Success">Success</option>
                             <option value="Failure">Failure</option>
                                                     </select>
                     </td>
                 </tr>
         
     
                

                <tr>
                     <td>
                         <label id="aadhar" runat="server">Aadhar Number</label>
                         
                     </td>
                     <td>
                         <input type="text" id="aadhar_num" runat="server" />
                         
                     </td>
                      
               <td>
                         <label id="aadharstatus" runat="server">AadharStatus</label>
                        
                     </td>
                     <td>
                         <select name="dropdwn" id="Astat" runat="server" >
                             <option selected="Not Initiated" value="NOT INITIATED">NOT INITIATED</option>
                             <option value="Success">Success</option>
                             <option value="Failure">Failure</option>
                                                     </select>
                         
                     </td>
                    

                <tr>
                     <td>
                         <label id="passport" runat="server">Passport Number</label></td>
                      
                     <td>
                         <input type="text" id="pass_num" runat="server" />
                       
                     </td>
                      
               <td>
                         <label id="psstat" runat="server">&nbsp;Passport Status</label>
                         
                     </td>
                     <td>
                         <select name="dropdwn" id="pastat" runat="server">
                             <option selected="Not Initiated" value="NOT INITIATED">NOT INITIATED</option>
                             <option value="SUCCESS">SUCESS</option>
                             <option value="FAILURE">FAILURE</option>
                                                     </select>
                         
                     </td>
                    </tr>
                    <tr>
                        <td>
                         <label id="mname" runat="server">Middle Name</label></td>
         
                     <td>
                         
                         <input type="text" id="mid_name" runat="server"  />&nbsp&nbsp </td>
                    
                    <td>
                         
        <label id="Gender_id" runat="server">Gender</label></td>
                     <td>
                         
                         <input type="text" id="Gender" runat="server" />&nbsp&nbsp </td>
                    
                    
                 </tr>
   
    <tr>
         <td>
                         <label id="Address_id" runat="server">Address</label></td>
                     <td>
                         <input type="text" id="Address" runat="server" />
                       
                       
                       
                     </td>
        <td> <label>UpLoadFile </label></td>
        <td>
            <asp:FileUpload  ID="FileUpload1" runat="server" Height="37px" Width="395px" />
                <br />    
                <asp:Button margin runat="server" ID="Button1" Text="Upload" 
                onclick="upload" style="position:relative;" />

         
        </td>
    </tr>
    <tr>
         <td>
                         <label id="City_id" runat="server">City</label></td>
                     <td>
                         <input type="text" id="City" runat="server" />
                       
                     </td>
        <td></td>
    </tr>
   
          <tr>
                 <td>
                         <label id="State_id" runat="server">State</label></td>
                
                       
                     <td>
                         <input type="text" id="State" runat="server" />
                       
                     </td>
    </tr>
    <tr>
         <td>
                         <label id="Pin_id" runat="server">Pin</label></td>
                     <td>
                         <input type="text" id="Pin" runat="server" />
                       
                     </td>
    </tr>
    
    <tr>
         <td>
                         <label id="Email_id" runat="server">Email</label></td>
                     <td>
                         <input type="text" id="Email" runat="server" />
                       
                     </td>
    </tr>
                    
                    <td>
                    <label id="mob" runat="server">MobileNumber</label></td>
                     <td>
                         <input type="text" id="MobileNumber" runat="server" />
                       
                     </td>
    </tr>
       
        </table>
                    
  
          <asp:Button ID="Update" runat="server" Text="Update" OnClick="update" Style="font-size:small;background-color:#3498db;color:white;width:90px;position:relative;left:2%;" /><br/><br/>
    </div>
    </form>
</body>
</html>

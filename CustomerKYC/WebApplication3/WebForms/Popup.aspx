﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="WebApplication3.WebForms.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"></head>
    <title></title>
<body>
     <form id="form1" runat="server">
     <div>
      <h1 style="text-align:left;color:#3498db;font-family:sans-serif;font-size:large;">Update your  Details </h1>
          <br />
          <br />
           <td>
                         <label id="appid" runat="server">Applicant id</label>

                        <label id="ad" class="required" style="color:red">*</label>

                    </td>
                     <td>
                         <input type="text" id="app_id" runat="server" required />
                         &nbsp&nbsp 
                     </td>
          &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp 
         <td>
                         <label id="fname" runat="server">First Name</label>
             <label id="fn" class="required" style="color:red">*</label>
                         
                     </td>

                    <td>
                         <input type="text" id="first_name" runat="server"  required/>
                       </td>
     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp 
                     <td>
                         <label id="mname" runat="server">Middle Name</label></td>
         <label id="mn" class="required" style="color:red">*</label>
                     <td>
                         
                         <input type="text" id="mid_name" runat="server" />&nbsp&nbsp </td>
                    
        
                    
         
         <br />
          <br />
          <tr>
                     <td>
                         <label id="pan" runat="server">Pan Number</label>
                         <label id="pn" class="required" style="color:red">*</label>

                    </td>
                     <td>
                         <input type="text" runat="server" id="pan_num" required />
                     </td>
                &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               <td>
                         <label id="panstatus" runat="server">PanStatus</label>
                         <label id="ps" class="required" style="color:red">*</label>
                     </td>
                     <td>
                         <select name="dropdwn" id="Pstat" runat="server" required>
                             <option selected="Not Initiated" value="Select">Not Initiated</option>
                             <option value="Success">Success</option>
                             <option value="Failure">Failure</option>
                                                     </select>
                     </td>
                 </tr>
         <br />
         <br />
                 <tr>
                     <td></td>
                 </tr>
                 <tr>
                     <td></td>
                 </tr>

                <tr>
                     <td>
                         <label id="aadhar" runat="server">Aadhar Number</label>
                         <label id="an" class="required" style="color:red">*</label>
                     </td>
                     <td>
                         <input type="text" id="aadhar_num" runat="server" required/>
                         
                     </td>
                      &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp
               <td>
                         <label id="aadharstatus" runat="server">AadharStatus</label>
                         <label id="as" class="required" style="color:red">*</label>
                     </td>
                     <td>
                         <select name="dropdwn" id="Astat" runat="server" required>
                             <option selected="Not Initiated" value="Select">Not Initiated</option>
                             <option value="Success">Success</option>
                             <option value="Failure">Failure</option>
                                                     </select>
                     </td>
                     <br /> 
                      <br /> 

                </tr>
                 <tr>
                     <td></td>
                 </tr>
                 <tr>
                     <td></td>
                 </tr>

                <tr>
                     <td>
                         <label id="passport" runat="server">Passport Number</label></td>
                      <label id="psn" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="pass_num" runat="server" />
                       
                     </td>
                      &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
               <td>
                         <label id="psstat" runat="server">Passport Status</label>
                         <label id="pss" class="required" style="color:red">*</label>
                     </td>
                     <td>
                         <select name="dropdwn" id="pastat" runat="server" required>
                             <option selected="Not Initiated" value="Select">Not Initiated</option>
                             <option value="Success">Success</option>
                             <option value="Failure">Failure</option>
                                                     </select>
                     </td>
                 </tr>
     &nbsp;</div>
         <br /> 
                      <br /> 
          <asp:Button ID="Update" runat="server" Text="Update" OnClick="update" Style="font-size:small;background-color:#3498db;color:white;width:90px;position:relative;left:2%;" /><br/><br/>
        
     </form>
 </body>



</html>

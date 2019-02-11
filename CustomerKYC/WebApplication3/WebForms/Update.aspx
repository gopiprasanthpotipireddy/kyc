<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="WebApplication3.WebForms.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:left;color:#3498db;font-family:sans-serif;font-size:large;">Update your  Details </h1>
          <br />
          <br />
    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
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
     <br />
     <br />
    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
                     <td>
                         <label id="mname" runat="server">Middle Name</label></td>
         <label id="mn" class="required" style="color:red">*</label>
                     <td>
                         
                         <input type="text" id="mid_name" runat="server" />&nbsp&nbsp </td>
                    
         &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
      <td>
                         <label id="Gender_id" runat="server">Gender</label></td>
         <label id="gd" class="required" style="color:red">*</label>
                     <td>
                         
                         <input type="text" id="Gender" runat="server" />&nbsp&nbsp </td>
                    
         
         <br />
          <br />
    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
          <tr>
                     <td>
                         <label id="pan" runat="server">Pan Number</label>
                         <label id="pn" class="required" style="color:red">*</label>

                    </td>
                     <td>
                         <input type="text" runat="server" id="pan_num" required />
                     </td>
                &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
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
     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
                

                <tr>
                     <td>
                         <label id="aadhar" runat="server">Aadhar Number</label>
                         <label id="an" class="required" style="color:red">*</label>
                     </td>
                     <td>
                         <input type="text" id="aadhar_num" runat="server" required/>
                         
                     </td>
                      &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
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
                     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp

                <tr>
                     <td>
                         <label id="passport" runat="server">Passport Number</label></td>
                      <label id="psn" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="pass_num" runat="server" />
                       
                     </td>
                      &nbsp&nbsp &nbsp&nbsp &nbsp
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
    <br/>
     <br/>
                     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
    <tr>
         <td>
                         <label id="Address_id" runat="server">Address</label></td>
                      <label id="add" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="Address" runat="server" />
                       
                     </td>
    </tr>
    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp
    <tr>
         <td>
                         <label id="City_id" runat="server">City</label></td>
                      <label id="city" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="City" runat="server" />
                       
                     </td>
    </tr>
    <br />
                     <br />
                     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
          <tr>
                 <td>
                         <label id="State_id" runat="server">State</label></td>
                
                      <label id="state" class="required" style="color:red">*</label>
                       
                     <td>
                         <input type="text" id="State" runat="server" />
                       
                     </td>
    </tr>
    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp
    <tr>
         <td>
                         <label id="Pin_id" runat="server">Pin</label></td>
                      <label id="pin" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="Pin" runat="server" />
                       
                     </td>
    </tr>
     <br />
                     <br />
                     &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
    <tr>
         <td>
                         <label id="Email_id" runat="server">Email</label></td>
                      <label id="email" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="Email" runat="server" />
                       
                     </td>
    </tr>
                    &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp &nbsp&nbsp &nbsp
                     <tr>
         <td>
                         <label id="mob" runat="server">MobileNumber</label></td>
                      <label id="mb" class="required" style="color:red">*</label>
                     <td>
                         <input type="text" id="MobileNumber" runat="server" />
                       
                     </td>
    </tr>
                    
     <br />
                    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UpLoadFile&nbsp;&nbsp;
    <asp:FileUpload paddingle ID="FileUpload1" runat="server" Height="37px" Width="395px" />
                     <asp:Button margin runat="server" ID="btnUpload" Text="Upload" 
                onclick="upload" style="position:relative;left:15%" />

         <br /> 
                      <br /> 
          <asp:Button ID="Update" runat="server" Text="Update" OnClick="update" Style="font-size:small;background-color:#3498db;color:white;width:90px;position:relative;left:2%;" /><br/><br/>
</asp:Content>

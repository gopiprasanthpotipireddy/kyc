<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<style type="text/css">

.header
{
 display:none;
}

.footer
{
display:none;
}
#bingo
{
display:none;
}

</style>
    
    <div class="header">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>

    <div >
      
    </div>

     <div class="customer1" style="font-family:sans-serif;">
            <style>
                body {
                    font-size: large;
                    font-style: normal;
                }

                .required {
                    color: red;
                    font-weight: bold;
                }
            </style>


            <h2 style="text-align:center;color:#3498db;font-family:sans-serif;font-size:medium;">User Details </h2>
            
           
            <p class="title" style="font-size:medium;color:#3498db;">Personal</p>

            <table class="cust" style="font-size:medium;">

                <tr>
                    <td>
                        <label id="prefix" runat="server">Prefix</label>
                    </td>
                    <td>
                        <select name="ddlPrefix" id="ddlPrefix" runat="server">
                            <option selected="selected" value="Select" runat="server">Select</option>
                            <option value="Mr.">Mr.</option>
                            <option value="Master">Master</option>
                            <option value="Ms.">Ms.</option>
                            <option value="Mrs.">Mrs.</option>
                            <option value="Dr.">Dr.</option>
                        </select>

                    </td>

                    <td>
                        <label id="fname" runat="server">First Name</label>
                        <label id="req" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="first_name" runat="server"  required/>
                        &nbsp&nbsp </td>

                    <td>
                        <label id="mname" runat="server">Middle Name</label></td>
                    <td>
                        <input type="text" id="mid_name" runat="server" />&nbsp&nbsp </td>
                    <td>
                        <label id="lname" runat="server">Last Name</label>
                        <label id="req1" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="last_name" runat="server" required />
                        &nbsp&nbsp </td>


                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="pan" runat="server">Pan Number</label>
                        <label id="req2" class="required">*</label>

                    </td>
                    <td>
                        <input type="text" runat="server" id="pan_num" required />
                    </td>
                    &nbsp&nbsp 
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <label id="aadhar" runat="server">Aadhar Number</label>
                        <label id="req3" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="aadhar_num" runat="server" required/>
                        
                    </td>
                    &nbsp&nbsp 
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
                    <td>
                        <input type="text" id="pass_num" runat="server" />
                        &nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>


            </table>
            <table class="cust1" style="font-size:medium;">
                <p class="title" style="font-size:medium;color:#3498db;">
                    Occupation & Income 
                </p>
                <tr>
                    <td>
                        <label id="occ" runat="server">Occupation</label>
                        <label id="req4" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="occ_dd" runat="server" required>
                            <option selected="selected" value="Select">Select</option>
                            <option value="Salaried">Salaried</option>
                            <option value="Self Employed">Self Employed</option>
                            <option value="Retired">Retired</option>
                            <option value="Self-Employed Professional">Self-Employed Professional</option>
                            <option value="Student">Student</option>
                            <option value="Housewife">Housewife</option>
                            <option value="Politician">Politician</option>
                            <option value="Others">Others</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="funds" runat="server">Source of Funds</label>
                        <label id="req5" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="sof" runat="server" required>
                            <option selected="selected" value="Select">Select</option>
                            <option value="Salary">Salary</option>
                            <option value=">Agriculture">Agriculture</option>
                            <option value="Business Income">Business Income</option>
                            <option value="Investment Income">Investment Income</option>
                            <option value="Others">Others</option>
                        </select>
                    </td>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </tr>
                <tr>
                    <td>
                        <label id="annual_inc" runat="server">Gross Annual Income</label>
                        <label id="req6" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="gross_inc" runat="server" required>
                            <option selected="selected" value="Select">Select</option>
                            <option value="<50,000"><50,000</option>
                            <option value="50,000-1 Lac">50,000-1 Lac</option>
                            <option value="1-3 Lac">1-3 Lac </option>
                            <option value="3-5 Lac">3-5 Lac</option>
                            <option value="5-7.5 Lac">5-7.5 Lac</option>
                            <option value="7.5-10 Lac">7.5-10 Lac</option>
                            <option value="10-15 Lac">10-15 Lac</option>
                            <option value=">15 Lac">>15 Lac</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="res" runat="server">Residence Type</label>
                        <label id="req7" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="res_type" runat="server" required>
                            <option selected="selected" value="Select">Select</option>
                            <option value="Owned">Owned</option>
                            <option value=">Rental/Leased">Rental/Leased</option>
                            <option value="Ancestral/Family">Ancestral/Family</option>
                            <option value="Company Provided">Company Provided</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>



            </table>
            <table class="cust2" style="font-size:medium;">
                <p class="title" style="font-size:medium;color:#3498db;">
                    Mailing Address & Contact Details
                </p>
                <tr>
                    <td>
                        <label id="flat" runat="server">Flat No./Building Name </label>
                        <label id="req8" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" runat="server" id="flatno"  required/>
                        &nbsp&nbsp 
                    </td>

                    <td>
                        <label id="street" runat="server">Street Number</label>
                    </td>
                    <td>
                        <input type="text" id="street_no" runat="server" />
                        &nbsp&nbsp 
                    </td>
                    <td>
                        <label id="landmark" runat="server">Landmark</label>
                    </td>
                    <td>
                        <input type="text" id="land" runat="server" />&nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="state" runat="server">State</label>
                        <label id="req9" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="stat" runat="server" required>
                            <option selected="selected" value="Select">Select</option>
                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                            <option value="Andaman and Nicobar Island">Andaman and Nicobar Island</option>
                            <option value="Assam">Assam</option>
                            <option value="Delhi">Delhi</option>
                            <option value="Karnataka">Karnataka</option>
                            <option value="Kerala">Kerala</option>
                            <option value="Odisha">Odisha</option>
                            <option value="Meghalaya">Meghalaya</option>
                            <option value="Telangana">Telangana</option>
                            <option value="Tripura">Tripura</option>
                            <option value="Sikkim">Sikkim</option>
                            <option value="Punjab">Punjab</option>
                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                            <option value="Manipur">Manipur</option>
                            <option value="Goa">Goa</option>
                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        </select>
                    </td>
                    <td>
                        <label id="city" runat="server">City</label>
                        <label id="req10" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="city_name" runat="server" required/>&nbsp&nbsp 
                    </td>
                    <td>
                        <label id="pin" runat="server">PIN Code</label>
                    </td>
                    <td>
                        <input type="text" id="pin_code" runat="server" />&nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="country" runat="server">Country</label>
                    </td>
                    <td>
                        <input type="text" id="count" runat="server" />&nbsp&nbsp 
                    </td>
                    <td>
                        <label id="mob" runat="server">Mobile Number</label>

                        <label id="req11" class="required">*</label>

                    </td>
                    <td>
                        <input type="text" id="mob_num" runat="server" required />
                        &nbsp&nbsp 
                    </td>
                    <td>
                        <label id="email" runat="server">Email Id</label>
                        <label id="req12" class="required">*</label>    
                    </td>
                    <td>
                        <input type="text" id="email_id" runat="server" required/>&nbsp&nbsp
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>

            </table>

        </div>
        <br />
        <br/>
        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="verify" Style="font-size:small;background-color:#3498db;color:white;width:90px;position:relative;left:2%;" /><br/><br/>
        

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CustomerKYC.WebForms.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#table tr td{
  padding:30px;
}
#table tr:nth-child(even){background-color: #f2f2f2;}
#table tr:hover {background-color: #ddd;}
.main {
            margin-left: 200px;
            margin-right:100px; /* Same as the width of the sidenav */
        }
        </style>
</head>
<body>
    <form id="Aboutform1" runat="server">
    <div class ="main">
        <label id="headlabel" style="color:#039;height:30px;width:10px;"><h1> About Aadhar</h1></label>
    <p>Aadhaar number is a 12-digit random number issued by the UIDAI (“Authority”) to the residents of India after satisfying the verification process laid down by the Authority. Any individual, irrespective of age and gender, who is a resident of India, may voluntarily enrol to obtain Aadhaar number. Person willing to enrol has to provide minimal demographic and biometric information during the enrolment process which is totally free of cost. An individual needs to enrol for Aadhaar only once and after de-duplication only one Aadhaar shall be generated, as the uniqueness is achieved through the process of demographic and biometric de-duplication.</p>
    <table class="table">
        <tr><td style="height:20px; width:100px;">Demographic information</td>
         <td  style="height:20px; width:500px;">Name, Date of Birth (verified) or Age (declared), Gender, Address, Mobile Number (optional) and Email ID (optional)</td></tr>
         <tr><td  style="height:20px; width:100px;"">Biometric information</td>
         <td  style="height:20px; width:500px;">Ten Fingerprints, Two Iris Scans, and Facial Photograph</td></tr>
        </table>
        <p>Aadhaar number is verifiable in an online, cost-effective way. It is unique and robust enough to eliminate duplicates and fake identities and may be used as a basis/primary identifier to roll out several Government welfare schemes and programmes for effective service delivery thereby promoting transparency and good governance. This is the only program of its kind globally, wherein a state-of-the-art digital and online Id is being provided free of cost at such a large scale to people, and has the potential to change the way service delivery functions in the country.</p><br/>
        <p>Aadhaar number is devoid of any intelligence and does not profile people based on caste, religion, income, health and geography. The Aadhaar number is a proof of identity, however, it does not confer any right of citizenship or domicile in respect of an Aadhaar number holder.</p><br/>
        <p>Aadhaar is a strategic policy tool for social and financial inclusion, public sector delivery reforms, managing fiscal budgets, increase convenience and promote hassle-free people-centric governance. Aadhaar can be used as a permanent Financial Address and facilitates financial inclusion of the underprivileged and weaker sections of the society and is therefore a tool of distributive justice and equality. The Aadhaar identity platform is one of the key pillars of the ‘Digital India’, wherein every resident of the country is provided with a unique identity. The Aadhaar programme has already achieved several milestones and is by far the largest biometrics based identification system in the world.</p><br/>
        <p>Aadhaar identity platform with its inherent features of Uniqueness, Authentication, Financial Address and e-KYC, enables the Government of India to directly reach residents of the country in delivery of various subsidies, benefits and services by using the resident’s Aadhaar number only.</p><br/>
    </div>
    </form>
</body>
</html>

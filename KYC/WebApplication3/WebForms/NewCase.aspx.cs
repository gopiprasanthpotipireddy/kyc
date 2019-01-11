using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KYC
{

    public partial class NewCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_OnClick(object sender, EventArgs e)
        {

            //testc.clientname = textbox1.Value;
            //string test = new HtmlDocument(Microsoft.VisualStudio.TestTools.UITesting.UITestControl).GetElementById("txtbox1");
            //var test2=new HtmlDocument.GetElementById("txtbox2");
            clsAssociatedPersonsNEntities APNE = new clsAssociatedPersonsNEntities();
            APNE.EntityName = Entity_Name.Value;
            APNE.Trade = TradeName.Value;
            APNE.FirstName = FirstName.Value;
            APNE.MiddleName = MiddleName.Value;
            APNE.LastName = LastName.Value;
            APNE.FamilyName = FamilyName.Value;
            APNE.suffix = SuffixText.Value;
            APNE.CIFID = CIF_ID.Value;
            APNE.UENNumber = UENNumber.Value;
            APNE.Occupation = OccupationText.Value;
            APNE.OccupationDescriptionJustification = OccupationDescriptionText.Value;
            APNE.PrimaryRegulator = PrimaryRegulatorTextBox.Value;
            APNE.EntityExchangeName = EntityExchangeNameText.Value;
            APNE.Comments = CommentsText.Value;
            APNE.NatureOfBusiness = NatureOfBusinessTextArea.Value;
            APNE.StateProvinceOfIncorporationFormation = StateProvinceOfIncorporationFormationText.Value;
            APNE.IncorporationRegistrationNumber = IncorporationRegistrationNumberText.Value;
            APNE.WatchListManagement = WatchListManagementText.Value;
            APNE.PEFPjustification = PEFPorPEPJustificationtext.Value;
            APNE.PEPDeterminationDate = PEFPorPEPDeterminationDateText.Value;
            APNE.SanctionJustification = SanctionJustificationTextArea.Value;
            bool isFinancial = Entity_yes.Checked;
            bool isFinancial1 = Entity_no.Checked;
            if (isFinancial)
            {
                APNE.FinancialInstituttion = Entity_yes.Value;
            }
            else if (isFinancial1)
            {
                APNE.FinancialInstituttion = Entity_no.Value;
            }
            if ((Entity_Name.Value == "") || (FirstName.Value == "")|| (LastName.Value == "")|| (CIF_ID.Value == "")|| (UENNumber.Value == ""))
                  {
                      Response.Write("<span>");
                      Response.Write(" <script>alert(" + '"' + "Please Check the mandatory Fields" + '"' + "); </script>");
                     Response.Write("</span>");
                   }
          
            string separator = ",";
            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\AssociatedPersonNEntities.csv";
            //string FilePath = @"C:\Users\keerthik\Desktop\AssociatedPersonNEntities.csv";
            StringBuilder sb = new StringBuilder();
            StringBuilder sb1 = new StringBuilder();
            sb.AppendLine(string.Join(separator, APNE.EntityName, APNE.Trade, APNE.FirstName, APNE.MiddleName, APNE.LastName, APNE.FamilyName, APNE.suffix, APNE.CIFID, APNE.UENNumber, APNE.Occupation, APNE.OccupationDescriptionJustification, APNE.PrimaryRegulator, APNE.EntityExchangeName, APNE.Comments, APNE.NatureOfBusiness, APNE.StateProvinceOfIncorporationFormation, APNE.IncorporationRegistrationNumber, APNE.WatchListManagement, APNE.PEFPjustification, APNE.PEPDeterminationDate, APNE.SanctionJustification));
            File.AppendAllText(FilePath, sb1.ToString());
            string FilePath2 = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_retriever.csv";
         
            sb.AppendLine(string.Join(separator, APNE.EntityName, APNE.Trade, APNE.FirstName, APNE.LastName, APNE.FamilyName,  APNE.CIFID, APNE.UENNumber, APNE.Occupation,APNE.FinancialInstituttion, APNE.PrimaryRegulator, APNE.NatureOfBusiness, APNE.StateProvinceOfIncorporationFormation, APNE.IncorporationRegistrationNumber, APNE.PEFPjustification, APNE.SanctionJustification));
            File.AppendAllText(FilePath2, sb1.ToString());
            ///
            ///code for getting the details of ownership tab details.
            ///
            APNE.ClientName = ClientNameText.Value;
            APNE.ClientCIFID = ClientCIFIDText.Value;
            APNE.RolesInformation = RolesInformationText.Value;
            APNE.Entityname = EntityNameText.Value;
            APNE.IndividualName = IndividualNameText.Value;
            APNE.Familyname = Family_nameText.Value;
            APNE.CIF_ID = _CIFIDText.Value;
            APNE.PEPMaterialityJustification = PEPMaterialityJustificationTextxArea.Value;
            APNE.Holding = HoldingText.Value;
            bool isIndividualsPEP = IndividualsPEP_yes.Checked;
            bool isIndividualsPEP1 = IndividualsPEP_no.Checked;
            if (isIndividualsPEP)
            {
                APNE.IndividualsPEP = IndividualsPEP_yes.Value;
            }
            else if (isIndividualsPEP)
            {
                APNE.IndividualsPEP = IndividualsPEP_no.Value;
            }
            //string FilePath3 = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Ownership.csv";
            //StringBuilder sb2 = new StringBuilder();
            //sb.AppendLine(string.Join(separator, APNE.ClientName, APNE.ClientCIFID, APNE.RolesInformation, APNE.IndividualName, APNE.Familyname, APNE.CIF_ID, APNE.PEPMaterialityJustification, APNE.Holding, APNE.IndividualsPEP ));
            //File.AppendAllText(FilePath2, sb2.ToString());
            //checkbox
            //APNE.Owner;
            //APNE.ControlPhpng;
            //APNE.Director;
            //APNE.DirectorMemberBoard;
            //APNE.Chairman;
            //APNE.Vice_Chairman;
            //APNE.GeneralPartner;
            //APNE.Signatory;
            //APNE.KeySeniorManagement;
            //APNE.CEOorDeputy;
            //APNE.CFO;
            //APNE.COO;
            //APNE.President;
            //APNE.OtherSeniorManagement;
            //APNE.ThirdParty;
            //APNE.RelationshipBetweenThirdPartyandAccountHolder = RelationshipBetweenThirdPartyandAccountHolderText.Value;
            //APNE.others = ;
            //APNE.Beneficiary;
            //APNE.Custodian;
            //APNE.FeederEnd;
            //APNE.FundAdministration;
            //APNE.InvestmentAdvisor;
            //APNE.MasterFundLabel;
            //APNE.powerOfLabel;
            //APNE.SettorLabel;
            //APNE.TrusteeLabel;
            //APNE.OtherLabel;
            //APNE.CommentsOthers = CommentOtherstext.Value;
            //APNE.CorrespondentBank;
            //APNE.BranchRolePlayer;
            //APNE.BranchSnrMgmt;
            //APNE.BranchAMLOfficer;
            //APNE.PEPMaterialityForRole = PEPMaterialityForRoleText.Value;
            //APNE.IndividualsPEP;
            //APNE.PEPMaterialityJustification = PEPMaterialityJustificationTextxArea.Value;
            //APNE.Holding = HoldingText.Value;
            //APNE.SelectedTo;
            //APNE.RejectedToLabel;
            //APNE.HoldingPercentileUnknown;
            // APNE.HoldingPercentageRange;
            // APNE.ReasonHoldingpercentageUnknown;




            ///
            /// Code fro ClientStatic Data
            /// 
            //if (txtbox1.Value == "")
            //{
            //    Response.Write("<span>");
            //    Response.Write("<center>ClientName field Can't be Empty</center>");
            //    Response.Write("</span>");
            //}
            //if (Text2.Value == "")
            //{

            //    Response.Write("<center>ClientID Can't be Empt</center>");

            //}
            //if (!(rd1.Checked || rd2.Checked))
            //{
            //    Response.Write("<center>Written Internal Places and Procedures  field Can't be Empty</center>");
            //}
            //if (!(rd3.Checked || rd4.Checked))
            //{
            //    Response.Write("<center>Risk Assessment field Can't be Empty</center>");
            //}
            //if (!(rd5.Checked || rd6.Checked))
            //{
            //    Response.Write("<center>Designation of compliance officer field Can't be Empty</center>");
            //}
            //if (!(rd7.Checked || rd8.Checked))
            //{
            //    Response.Write("<center>Periodic independency testing of AML Program field Can't be Empty</center>");
            //}

            //try
            //{
            //    //Code for Client StaticData
            //    clsEntityRelationshiporOfferings obj = new clsEntityRelationshiporOfferings();

            //    obj.ClientName = txtbox1.Value;

            //    obj.ClientID = int.Parse(Text2.Value);
            //    bool isProcedure = rd1.Checked;
            //    bool isProcedure1 = rd2.Checked;
            //    bool isRisk = rd3.Checked;
            //    bool isRisk1 = rd4.Checked;
            //    bool isDesignation = rd5.Checked;
            //    bool isDesignation1 = rd6.Checked;
            //    bool isTesting = rd7.Checked;
            //    bool isTesting1 = rd8.Checked;
            //    bool isTraining = rd9.Checked;
            //    bool isTraining1 = rd10.Checked;
            //    if (isProcedure)
            //    {
            //        obj.Procedure = rd1.Value;
            //    }
            //    else if (isProcedure1)
            //    {
            //        obj.Procedure = rd2.Value;
            //    }
            //    if (isRisk)
            //    {
            //        obj.Risk = rd3.Value;
            //    }
            //    else if (isRisk1)
            //    {
            //        obj.Risk = rd4.Value;
            //    }
            //    if (isDesignation)
            //    {
            //        obj.Designation = rd5.Value;
            //    }
            //    else if (isDesignation1)
            //    {
            //        obj.Designation = rd6.Value;
            //    }
            //    if (isTesting)
            //    {
            //        obj.testing = rd7.Value;
            //    }
            //    else if (isTesting1)
            //    {
            //        obj.testing = rd8.Value;
            //    }

            //    if ((obj.ClientName == null) || (Text2.Value == null) || (obj.Procedure == null) || (obj.Risk == null) || (obj.Designation == null) || (obj.testing == null))
            //    {
            //        Response.Write("<script>alert('No Field Should Be Empty');</script>");

            //    }

            //    else
            //    {
            //        try
            //        {
            //            string separator1 = ",";
            //            string FilePath1 = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Maker.csv";
            //            StringBuilder sb1 = new StringBuilder();
            //            sb.AppendLine(string.Join(separator1, obj.ClientID, obj.ClientName, obj.Procedure, obj.Risk, obj.Designation, obj.testing));

            //            File.AppendAllText(FilePath1, sb1.ToString());



            //        }
            //        catch (Exception exp1)
            //        {
            //            Response.Write(exp1.InnerException);
            //        }
            //    }
            //}
            //catch (Exception exp)
            //{

            //    Response.Write("<center>error occured</center>");
            //}

        }
    }
    }


    

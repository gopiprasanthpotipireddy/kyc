using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KYC
{
    public class clsAssociatedPersonsNEntities
    {
        public string EntityName { get; set; }
        public string Trade { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string FamilyName { get; set; }
        public string Title { get; set; }
        public string suffix { get; set; }
        public string CIFID { get; set; }
        public string CustomerClassification { get; set;}
        public string UENNumber { get; set;}
        public string Prohibited { get; set; }
        public string Occupation { get; set; }
        public string OccupationDescriptionJustification { get; set;}
        public string Nationality { get; set;}
        public string Citizenship { get; set; }
        public string FinancialInstituttion { get; set; }
        public string PrimaryRegulator { get; set; }
        public string RegulatorCountry { get; set; }
        public string EntityExchange { get; set; }
        public string EntityExchangeName { get; set; }
        public string TickerSymbol { get; set; }
        public string Comments { get; set; }
        public string LegalEntity { get; set; }
        public string NatureOfBusiness { get; set; }
        public string CountryOfIncorporationAndFormation { get; set; }
        public string StateProvinceOfIncorporationFormation { get; set;}
        public string IncorporationRegistrationNumber { get; set; }
        public string WatchListManagement { get; set; }
        public string PEFP{ get; set; }
        public string PEFPjustification { get; set; }
        public string PEPDeterminationDate { get; set; }
        public string Sanction { get; set; }
        public string SanctionJustification { get; set; }
        public string SanctionDeterminationDate { get; set; }
        public string PreCheckDate { get; set;}
        public string AddressSection{get;set;}
        //setters and getters of Ownership tab
        public string ClientName { get; set; }
        public string ClientCIFID{ get; set; }
        public string RolesInformation { get; set; }
        public string Entityname { get; set; }
        public string IndividualName { get; set; }
        public string Familyname { get; set; }
        public string CIF_ID { get; set; }
        public string Owner { get; set; }
        public string ControlPhpng { get; set; }
        public string Director { get; set; }
        public string DirectorMemberBoard { get; set; }
        public string Chairman { get; set; }
        public string Vice_Chairman { get; set; }
        public string GeneralPartner { get; set; }
        public string Signatory { get; set; }
        public string KeySeniorManagement { get; set; }
        public string CEOorDeputy { get; set; }
        public string CFO { get; set; }
        public string COO { get; set; }
        public string President { get; set; }
        public string OtherSeniorManagement { get; set; }
        public string ThirdParty { get; set; }
        public string RelationshipBetweenThirdPartyandAccountHolder { get; set; }
        public string others { get; set; }
        public string Beneficiary { get; set; }
        public string Custodian { get; set; }
        public string FeederEnd { get; set; }
        public string FundAdministration{ get; set; }
        public string InvestmentAdvisor { get; set; }
        public string MasterFundLabel { get; set; }
        public string powerOfLabel { get; set; }
        public string SettorLabel { get; set; }
        public string TrusteeLabel { get; set; }
        public string OtherLabel { get; set; }
        public string CommentsOthers { get; set; }
        public string CorrespondentBank { get; set; }
        public string BranchRolePlayer { get; set; }
        public string BranchSnrMgmt { get; set; }
        public string BranchAMLOfficer { get; set; }
        public string PEPMaterialityForRole { get; set; }
        public string IndividualsPEP { get; set; }
        public string PEPMaterialityJustification { get; set; }
        public string Holding { get; set; }
        public string SelectedTo { get; set; }
        public string RejectedToLabel { get; set; }
        public string HoldingPercentileUnknown { get; set; }
        public string HoldingPercentageRange { get; set; }
        public string ReasonHoldingpercentageUnknown { get; set; }


    }
}
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
    }
}
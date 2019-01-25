using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CustomerKYC.WebForms
{
    public class Details
    {
        public static string pn;
        public static void PanDetails(string pannumber)
        {
            pn = pannumber;
        }
    }
}
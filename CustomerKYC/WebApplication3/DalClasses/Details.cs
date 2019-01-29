using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.DalClasses
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KYC
{
    public class hello
    {

        static int attempts = 3;
        public static bool isValidUser(string username, string password)
        {
            if ((username == "welcome") && (password == "welcome"))
            {
                attempts = 0;
                return true;
            }
            else if (attempts > 3 || attempts > 0)
            {
                --attempts;
                return false;
            }
            else
            {
                return false;
            }
        }
    }
}
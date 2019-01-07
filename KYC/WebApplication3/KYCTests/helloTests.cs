using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication3;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KYC.Tests
{
    [TestClass()]
    public class helloTests
    {
        [TestMethod()]
        public void isValidUserTest()
        {

            string username = "welcome";
            string password = "welcome";
            bool result;
            bool actual = true;

            result = hello.isValidUser(username, password);

            Assert.AreEqual(result, actual);
          
        }
    }
}
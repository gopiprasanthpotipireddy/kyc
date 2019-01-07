using Microsoft.VisualStudio.TestTools.UnitTesting;
using KYC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KYC.Tests
{
    [TestClass()]
    public class HelloTests
    {
        [TestMethod()]
        public void CheckUserTest()
        {
            
            //Arrange
            string username = "welcome";
            string password = "welcome";
            bool expected = true;
            bool actual;

            //Act

            actual = Hello.CheckUser(username, password);
            //Assert

            Assert.AreEqual(expected, actual);
        }
    }
}
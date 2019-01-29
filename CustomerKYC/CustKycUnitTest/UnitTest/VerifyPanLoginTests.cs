using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication3.DalClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication3.DalClasses.Tests
{
    [TestClass()]
    public class VerifyPanLoginTests
    {
        [TestMethod()]
        public void RamboTest()
        {
            //Arrange
            string username = "welcome";
            string password = "welcome";
            bool expected = true;
            bool actual;

            //Act

            actual = VerifyPanLogin.Rambo(username, password);

            //Assert
            Assert.AreEqual(expected, actual);
        }
    }
}
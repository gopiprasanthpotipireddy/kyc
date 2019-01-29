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
    public class VerifyAdharLoginTests
    {
        [TestMethod()]
        public void LoginTest()
        {

            //Arrange
            string username = "admin";
            string password = "admin";
            bool expected = true;
            bool actual;

            //Act

            actual = VerifyAdharLogin.Login(username, password);

            //Assert
            Assert.AreEqual(expected, actual);



        }
    }
}
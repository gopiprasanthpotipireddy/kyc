package tests;

import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.testng.xml.dom.Tag;

import pages.DriverPage;
import pages.LoginPage;
import pages.Registration;

public class TestScripts {
	 DriverPage basePage;
	 LoginPage loginPage;
	 Registration rpage; 
	
	@BeforeMethod
	public void setUp() throws Exception {
		basePage = new DriverPage();
		basePage.initialization();
	}
	
	//test for the successful login.
	@Test
	public void validLoginTest() {
		loginPage = new LoginPage();
		loginPage.loginToGuru("ritikasingh@virtusa.com","123");
		loginPage.verifySuccessLogin();

	}
	// test case when password is missing.
	@Test
	public void invalidLoginTest() {
		loginPage = new LoginPage();
		loginPage.loginToGuru("ritikasingh@virtusa.com","");
		loginPage.verifyInvalidLogin();
		
	}
	//test case when email id is missing.
	@Test
	public void invalidLoginTest1() {
		loginPage = new LoginPage();
		loginPage.loginToGuru("","123");
		loginPage.verifyInvalidLogin();
		
	}
	@Test
	public void invalidLoginTest2() {
		loginPage = new LoginPage();
		loginPage.loginToGuru("","");
		loginPage.verifyEmptyCredentials();
		
	}
	@Test
	public void invalidLoginTest3() {
		loginPage = new LoginPage();
		loginPage.loginToGuru("cev","cwefef");
		loginPage.verifyWrongCredentials();
		
	}
	//test case for the validation of empty field on the registration page.
	@Test
	
		public void registerTest()
		{
		rpage =new  Registration ();
		rpage.registrationToPage("Miss", "ritika" , "singh" , 
				 "7988678" ,"1995" ,"april" , "11"," 1 ","brb5 "," " , 
				 "tg54tg " , "brb "  ," " ,"ritika@gmail.com", "b5rtb " ,"b5rtb " );
		rpage.verifyPageValidations();
		
			
		}
	//test case for the validation of the password fields on the registration page.
	@Test
	
	public void registerTest1()
	{
	rpage =new  Registration ();
	rpage.registrationToPage("Mr", "sudheer" , "kumar" , 
			 "7988678" ,"1989" ,"december" , "04"," 1 ","brb5 "," gntybn" , 
			 "tg54tg " , "brb "  ,"brtb5 " ,"ritika@gmail.com ", "b5rtb " ," " );
	rpage.verifyPasswords();
	
		
	}
	
	
	@AfterMethod
	public void tearDown() {
		basePage.closeBrowser();
	}
	

}

package tests;

import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import pages.BasePage;
import pages.LoginPage;

public class TestScripts {
	BasePage basePage;
	LoginPage loginPage;
	
	@BeforeMethod
	public void setUp() throws Exception {
		basePage = new BasePage();
		basePage.initialization();
	}
	
	@Test
	public void loginTest() {
		loginPage = new LoginPage();
		loginPage.loginToKyc();
	    loginPage.handleAlert();
	    loginPage.isAlertPresent();
		
		
	}
	

}

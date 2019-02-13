
package Scripts;

import java.util.ArrayList;


import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.base.DriverBase;
import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;

import Pages.AadharLoginPage;
import Pages.AadharVerificationPage;
import Pages.NSDLLoginPage;
import Pages.LoginPage;
import Pages.NSDLLoginPage;
import Pages.NSDLVerificationPage;
import Pages.UserRegistrationPage;

public class  NSDLVerificationTestScript  extends DriverBase{
	
	
	DriverBase base;
	NSDLLoginPage nsdlloginpage;
	NSDLVerificationPage nsdlverificationpage;
	LoginPage loginpage;	
	UserRegistrationPage urp;
	ExtentTest test;
	ITestResult result;
	Connection con;
	Recordset rs ;
	int rs2;
	Fillo fillo;
	Alert alert;
	String uName, pword , str, expectedResult,msg,str2,but,pantext;
	private By info  = By.xpath("//*[@id=\"jetmenu\"]/li[2]/a");
	WebElement element ;
	
	@BeforeClass
	public void initializingConnections() throws FilloException {
		fillo = new Fillo();
		//con = fillo.getConnection( "C:\\Users\\sudheerkumarn\\Desktop\\sample\\Banking\\KYC_Poc.xlsx");
		con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		str="update KYC_NSDL_Login_Page set Status =''";
	    rs2 = con.executeUpdate(str);
	}
	
	@BeforeMethod
	public void setUp() throws Exception {
		base = new DriverBase();
		base.initialization();
		nsdlverificationpage = new NSDLVerificationPage(driver);
		 nsdlloginpage = new NSDLLoginPage(driver);
		loginpage = new LoginPage(driver);
		urp = new UserRegistrationPage(driver);
		WebElement heading = driver.findElement(By.xpath("//*[@id=\"intro\"]/div/div/div/h1"));
        heading.getLocation();
		 str = "Select * from KYC_Home_Login_Screen where TestCaseName ='Home_Login_ValidUserName_ValidPwd'";
			rs = con.executeQuery(str);
			while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				loginpage.loginToKyc(uName, pword);								
				WebElement new1 = driver.findElement(By.id("ContentPlaceHolder1_submit"));
				new1.click();
				WebElement  ele = driver.findElement(By.id("sidebar"));
				ele.getLocation();
				
				WebElement verify = driver.findElement(By.xpath("//*[@id=\"recent\"]/ul/li[1]/a[1]"));
				verify.click();
				
				 str = "Select * from KYC_NSDL_Login_Page where TestCaseName ='NSDL_Login_ValidUserName_ValidPwd'";
					rs = con.executeQuery(str);
					while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				nsdlloginpage.loginToNsdl(uName, pword);	
						
					}
					}
	}
			
			@Test
			public void valid_pan_id() throws Exception {
					
					String methodName = new Object() {}
				      .getClass()
				      .getEnclosingMethod()
				      .getName();
					
					
					 str = "Select * from KYC_NSDL_Verification_Page where TestCaseName ='valid_pan_id'";
					 rs = con.executeQuery(str);
					logger = report.createTest(methodName);
					
					while (rs.next()) {
						pantext = rs.getField("Pannumber").toString();
					
						expectedResult = rs.getField("ExpectedResult");
						System.out.println(pantext);
						nsdlverificationpage.NSDLVerify(pantext);
					    
						
						but = driver.findElement(By.xpath("//*[@id=\"form1\"]/div[3]/header/div[1]/h4")).getText();
						 
						
						if (expectedResult.equals("Pass") && but.contains("National Securities Depository Limited")) {
							System.out.println("Test is passed");
							 str2="update KYC_NSDL_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
						     rs2 = con.executeUpdate(str2);
						     Assert.assertTrue(true);
						     logger.log(Status.INFO, methodName); 						     						     						     
						}						  						     
						else {
							System.out.println("Test is Fail");
							 Assert.assertTrue(false);
							 logger.log(Status.INFO, methodName); 
							
								}														
					}
				
		}
					
			@Test
			public void blank_pan_id() throws Exception
			{
				
				String methodName = new Object() {}
			      .getClass()
			      .getEnclosingMethod()
			      .getName();
			      
			      str = "Select * from KYC_NSDL_Verification_Page where TestCaseName ='blank_pan_id'";
			      rs = con.executeQuery(str);
			      logger = report.createTest(methodName);
				
					while (rs.next()) {
						
						pantext = rs.getField("Pannumber").toString();						
						expectedResult = rs.getField("ExpectedResult");
						System.out.println(pantext);
						 nsdlverificationpage.NSDLVerify(pantext);
						 

							Alert alert = driver.switchTo().alert();
							   msg = alert.getText();
									     
					     
					      if (expectedResult.equals("Fail") )
						 {
						 
							 if(msg.contains("Please Enter the correct PAN Number"))
							 {
								 System.out.println("Test Is Passed");
								 alert.accept();
								 str2="update KYC_NSDL_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
							     rs2 = con.executeUpdate(str2);
							     Assert.assertTrue(true);
							     logger.log(Status.INFO, methodName); 
							    
							 }
							 
						 }
						 					     
							else 
							{
								System.out.println("Test is Fail");
							    alert.accept();
							    Assert.assertTrue(false);
							    logger.log(Status.INFO, methodName); 
								
									}

							
						}
		}
			
		   	
@Test


public void invalid_pan_id() throws Exception
{

String methodName = new Object() {}
.getClass()
.getEnclosingMethod()
.getName();

str = "Select * from KYC_NSDL_Verification_Page where TestCaseName ='invalid_pan_id'";
rs = con.executeQuery(str);
logger = report.createTest(methodName);

while (rs.next()) {
	pantext = rs.getField("Pannumber");
	expectedResult = rs.getField("ExpectedResult");
	System.out.println(rs.getField("Pannumber"));
	 nsdlverificationpage.NSDLVerify(rs.getField("Pannumber"));
	 alert = driver.switchTo().alert();
     msg = alert.getText();
     alert = driver.switchTo().alert();
   
     msg = alert.getText();

	if (expectedResult.equals("Fail") )
	 {
	 
		 if(msg.contains("Please Enter the correct PAN Number"))
		 {
			 System.out.println("Test Is Passed");
			 alert.accept();
			 str2="update KYC_NSDL_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str2);
		     Assert.assertTrue(true);
		     logger.log(Status.INFO, methodName); 
		    						 
		 }
		 
	 }
	 
     
		else 
		{
			System.out.println("Test is Fail");
		    alert.accept();
		    Assert.assertTrue(false);
		    logger.log(Status.INFO, methodName); 
			
				}
		
	}
}

							   	
			@AfterMethod
			public void tearDown() {
				 base.closeBrowser();
			}

			 
				 public void getTestResult(ITestResult result){
					 if(result.getStatus()==ITestResult.FAILURE)
					 {
					 logger.fail(result.getName());
					 logger.fail(result.getThrowable());
					 }else if(result.getStatus() == ITestResult.SKIP){
					 logger.skip("Test Case Skipped is "+result.getName());
					 } 
				 }
	}

			
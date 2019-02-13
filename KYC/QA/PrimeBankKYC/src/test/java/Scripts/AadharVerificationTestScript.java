
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
import Pages.LoginPage;
import Pages.NSDLLoginPage;
import Pages.UserRegistrationPage;

public class  AadharVerificationTestScript  extends DriverBase{
	
	
	DriverBase base;
	NSDLLoginPage nsdlloginpage;
	AadharVerificationPage aadharverificationpage;
	LoginPage loginpage;
	AadharLoginPage aadharloginpage;
	UserRegistrationPage urp;
	ExtentTest test;
	ITestResult result;
	Connection con;
	Recordset rs ;
	int rs2;
	Fillo fillo;
	Alert alert;
	String uName, pword , str, expectedResult,msg,str2,but,aadhartext;
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
		aadharverificationpage = new AadharVerificationPage(driver);
		 aadharloginpage = new AadharLoginPage(driver);
		loginpage = new LoginPage(driver);
		urp = new UserRegistrationPage(driver);
	    WebElement heading = driver.findElement(info);
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
				
				WebElement verify = driver.findElement(By.xpath("//*[@id=\"recent\"]/ul/li[2]/a[1]"));
				verify.click();
				
				 str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='Aadhar_Login_ValidUserName_ValidPwd'";
					rs = con.executeQuery(str);
					while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				aadharloginpage.loginToAadhar(uName, pword);	
				
				WebElement heading1 = driver.findElement(By.id("Aadharhead"));
				heading1.getLocation();
						
					System.out.println("hai");
					}
								
	}
	}
	@Test
	public void valid_aadhar_id() throws Exception {
			
			String methodName = new Object() {}
		      .getClass()
		      .getEnclosingMethod()
		      .getName();
			
			
			 str = "Select * from KYC_Aadhar_Verification_Page where TestCaseName ='valid_aadhar_id'";
			 rs = con.executeQuery(str);
			logger = report.createTest(methodName);
			
			while (rs.next()) {
				aadhartext = rs.getField("Aadharnumber").toString();
			
				expectedResult = rs.getField("ExpectedResult");
				System.out.println(aadhartext);
				aadharverificationpage.AadharVerify(rs.getField("Aadharnumber"));
			    
				
				but = driver.findElement(By.xpath("//*[@id=\"Aadharhead\"]")).getText();
				 
				
				if (expectedResult.equals("Pass") && but.contains("Aadhar Verification")) {
					System.out.println("Test is passed");
					 str2="update KYC_Aadhar_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
	public void blank_aadhar_id() throws Exception
	{
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
	      str = "Select * from KYC_Aadhar_Verification_Page where TestCaseName ='blank_aadhar_id'";
	      rs = con.executeQuery(str);
	      logger = report.createTest(methodName);
		
			while (rs.next()) {
				aadhartext = rs.getField("Aadharnumber");
				//System.out.println("AadharNumber:"+ AadharNumber1);
				expectedResult = rs.getField("ExpectedResult");
				System.out.println(rs.getField("Aadharnumber"));
				 aadharverificationpage.AadharVerify(aadhartext);
				 

					Alert alert = driver.switchTo().alert();
					   msg = alert.getText();
				
			     
			 /*	if (expectedResult.equals("Pass") && but.contains("AadharNumber")) {
					System.out.println("Test is passed");
					 str2="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
				     rs2 = con.executeUpdate(str2);
				     Assert.assertTrue(true);
				     logger.log(Status.INFO, methodName); 
				     
				     
				     
				}
				   
				     
				else {
					System.out.println("Test is Fail");
					 Assert.assertTrue(false);
					 logger.log(Status.INFO, methodName); 
					
						}*/
			     
			     
			     
			      if (expectedResult.equals("Fail") )
				 {
				 
					 if(msg.contains("Sorry! your Aadhar is not verified"))
					 {
						 System.out.println("Test Is Passed");
						 alert.accept();
						 str2="update KYC_Aadhar_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
	 
	
	public void invalid_aadhar_id() throws Exception
	{
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
	      str = "Select * from KYC_Aadhar_Verification_Page where TestCaseName ='invalid_aadhar_id'";
	      rs = con.executeQuery(str);
	      logger = report.createTest(methodName);
		
			while (rs.next()) {
				aadhartext = rs.getField("Aadharnumber");
			//System.out.println("AadharNumber:"+ AadharNumber1);
				expectedResult = rs.getField("ExpectedResult");
				System.out.println(rs.getField("Aadharnumber"));
				 aadharverificationpage.AadharVerify(rs.getField("Aadharnumber"));
				 alert = driver.switchTo().alert();
			     msg = alert.getText();
			     alert = driver.switchTo().alert();
			   
			     msg = alert.getText();

				if (expectedResult.equals("Fail") )
				 {
				 
					 if(msg.contains("Sorry! your Aadhar is not verified"))
					 {
						 System.out.println("Test Is Passed");
						 alert.accept();
						 str2="update KYC_Aadhar_Verification_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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


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
import Pages.LoginPage;
import Pages.NSDLLoginPage;
import Pages.UserRegistrationPage;

public class AadharLoginTestScript extends DriverBase{
	
	
	DriverBase base;
	NSDLLoginPage nsdlloginpage;
	AadharLoginPage aadharloginpage;
	LoginPage loginpage;
	UserRegistrationPage urp;
	ExtentTest test;
	ITestResult result;
	Connection con;
	Recordset rs ;
	int rs2;
	Fillo fillo;
	Alert alert;
	String uName, pword , str, expectedResult,msg,str2,but;
	private By info  =By.xpath("//*[@id=\"intro\"]/div/div/div/h1");
	WebElement element ;

	@BeforeClass
	
	public void intializingConnections() throws FilloException{
		  fillo = new Fillo();
		  //con = fillo.getConnection( "C:\\Users\\sudheerkumarn\\Desktop\\sample\\Banking\\KYC_Poc.xlsx");
		  con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		  str="update KYC_Home_Login_Screen set Status =''";
		     rs2 = con.executeUpdate(str);
		 }
		 

	
	@BeforeMethod
	public void setUp() throws Exception {
		base = new DriverBase();
		base.initialization();
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
				 String  handle= driver.getWindowHandle();
				 System.out.println("handled"+handle);
				
				
				WebElement verify = driver.findElement(By.xpath("//*[@id=\"recent\"]/ul/li[2]/a[1]"));
				verify.click();
				
				Thread.sleep(3000);
			   // WebElement adhead = driver.findElement(By.id("Aadharhead"));
				//adhead.getLocation();
				System.out.println("identified");
				/*WebElement loghead = driver.findElement(By.xpath("//*[@id=\"form1\"]/div[3]/section/article/div[1]/h2"));
				loghead.getLocation();
				*/
				
				
					System.out.println("hai");	
					
			
	}
	}
@Test

			
			public void Aadhar_Login_ValidUserName_ValidPwd() throws Exception {
					
					String methodName = new Object() {

					/*	@BeforeClass
						public void initializingConnections() throws FilloException {
							fillo = new Fillo();
							//con = fillo.getConnection( "C:\\Users\\sudheerkumarn\\Desktop\\sample\\Banking\\KYC_Poc.xlsx");
							con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
							str="update KYC_Aadhar_Login_Page set Status =''";
						    rs2 = con.executeUpdate(str);
						}*/}
				      .getClass()
				      .getEnclosingMethod()
				      .getName();
					
					
					 str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='Aadhar_Login_ValidUserName_ValidPwd'";
					 rs = con.executeQuery(str);
					logger = report.createTest(methodName);
					
					while (rs.next()) {
						uName = rs.getField("UserName");
						pword = rs.getField("PassWord");
						expectedResult = rs.getField("ExpectedResult");
						System.out.println(rs.getField("UserName") + " ::: " + rs.getField("PassWord"));
						Thread.sleep(1000);
						System.out.println("login screen"); 
						aadharloginpage.loginToAadhar(uName, pword);
						String ele =driver.getCurrentUrl();
						 System.out.println(ele);
						 
						
						but = driver.findElement(By.id("Aadharhead")).getText();
						 
						
						if (expectedResult.equals("Pass") && but.contains("Aadhar Verification")) {
							System.out.println("Test is passed");
							 str2="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
	
public void Aadhar_Login_InvalidUserName() throws Exception
{
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
      str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='"+methodName+"'";
      rs = con.executeQuery(str);
      logger = report.createTest(methodName);
	
		while (rs.next()) {
			uName = rs.getField("UserName");
			
		    expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName"));
			 aadharloginpage.loginToAadhar(uName, pword);
			 
			 alert = driver.switchTo().alert();
		     msg = alert.getText();
		
			 if (expectedResult.equals("Fail") )
			 {
			 
				 if(msg.contains("Please Check your Credentials"))
				 {
					 System.out.println("Test Is Passed");
					 alert.accept();
					 str="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
				     rs2 = con.executeUpdate(str);
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
public void Aadhar_Login_ValidUserName_InvalidPwd() throws Exception
{
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
      str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='"+methodName+"'";
      rs = con.executeQuery(str);
      logger = report.createTest(methodName);
	
		while (rs.next()) {
			uName = rs.getField("UserName");
			pword = rs.getField("PassWord");
			expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName") + " ::: " + rs.getField("PassWord"));
			 aadharloginpage.loginToAadhar(uName, pword);
			 alert = driver.switchTo().alert();
		     msg = alert.getText();
		
			 if (expectedResult.equals("Fail") )
			 {
			 
				 if(msg.contains("Sorry! please try later."))
				 {
					 System.out.println("Test Is Passed");
					 alert.accept();
					 str="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
				     rs2 = con.executeUpdate(str);
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


public void Aadhar_Login_BlankUserName_ValidPwd() throws Exception
{

String methodName = new Object() {}
  .getClass()
  .getEnclosingMethod()
  .getName();
  
  str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='"+methodName+"'";
  rs = con.executeQuery(str);
  
  logger = report.createTest(methodName);

	while (rs.next()) {
		uName = rs.getField("UserName");
		pword = rs.getField("PassWord");
		expectedResult = rs.getField("ExpectedResult");
		System.out.println(rs.getField("UserName") + " ::: " + rs.getField("PassWord"));
		 aadharloginpage.loginToAadhar(uName, pword);
		 alert = driver.switchTo().alert();
	     msg = alert.getText();
	
		 if (expectedResult.equals("Fail") )
		 {
		 
			 if(msg.contains("Please Check your Credentials"))
			 {
				
				 System.out.println("Test Is Passed");
			     alert.accept();
				 str="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
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


public void Aadhar_Login_ValidUserName_BlankPwd() throws Exception
{

String methodName = new Object() {}
  .getClass()
  .getEnclosingMethod()
  .getName();
  
  str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='"+methodName+"'";
  rs = con.executeQuery(str);
  logger = report.createTest(methodName);

	while (rs.next()) {
		uName = rs.getField("UserName");
		pword = rs.getField("PassWord");
		expectedResult = rs.getField("ExpectedResult");
		System.out.println(rs.getField("UserName") + " ::: " + rs.getField("PassWord"));
		 aadharloginpage.loginToAadhar(uName, pword);
		 alert = driver.switchTo().alert();
	     msg = alert.getText();
	
		 if (expectedResult.equals("Fail") )
		 {
		 
			 if(msg.contains("Please Check your Credentials"))
			 {
				
				 System.out.println("Test Is Passed");
			     alert.accept();
				 str="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
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


public void Aadhar_Login_BlankUserName_BlankPwd
() throws Exception
{

String methodName = new Object() {}
  .getClass()
  .getEnclosingMethod()
  .getName();
  
  str = "Select * from KYC_Aadhar_Login_Page where TestCaseName ='"+methodName+"'";
  rs = con.executeQuery(str);
  logger = report.createTest(methodName);

	while (rs.next()) {
		uName = rs.getField("UserName");
		pword = rs.getField("PassWord");
		expectedResult = rs.getField("ExpectedResult");
		System.out.println(rs.getField("UserName") + " ::: " + rs.getField("PassWord"));
		 aadharloginpage.loginToAadhar(uName, pword);
		 alert = driver.switchTo().alert();
	     msg = alert.getText();
	
		 if (expectedResult.equals("Fail") )
		 {
		 
			 if(msg.contains("Please Check your Credentials"))
			 {
				
				 System.out.println("Test Is Passed");
			     alert.accept();
				 str="update KYC_Aadhar_Login_Page set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
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
				// base.closeBrowser();
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


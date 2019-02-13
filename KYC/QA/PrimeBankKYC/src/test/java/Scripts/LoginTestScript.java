package Scripts;

import java.io.File;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.transform.Result;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Test;
import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;
import com.base.DriverBase;
import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;
import Pages.LoginPage;



public class LoginTestScript  extends DriverBase{
	
	DriverBase basePage;
	LoginPage loginPage;
	/*ExtentReports report;
	ExtentHtmlReporter htmlReporter;
    ExtentTest logger;
	*/
	ExtentTest test;
	Connection con;
	Recordset rs ;
	Fillo fillo;
	String uName, pword, expectedResult, str,str2, msg ;
	Status report1;
	String path;
	int rs2;
	private By info  = By.xpath("//*[@id=\"jetmenu\"]/li[2]/a");
	Alert alert;
	String but ;
	ITestResult result;
	
	
	
	@BeforeClass
	public void initializingConnections() throws FilloException {
		fillo = new Fillo();
		//con = fillo.getConnection( "C:\\Users\\sudheerkumarn\\Desktop\\sample\\Banking\\KYC_Poc.xlsx");
		con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		str="update KYC_Home_Login_Screen set Status =''";
	    rs2 = con.executeUpdate(str);
	}
	
	

	@BeforeMethod
	public void setUp() throws Exception {
		basePage = new DriverBase();
		basePage.initialization();
		loginPage = new LoginPage(driver);
		/*WebElement info1 = driver.findElement(info);
		info1.click();*/
		WebElement heading = driver.findElement(By.xpath("//*[@id=\"intro\"]/div/div/div/h1"));
        heading.getLocation();
		
		
		
	}
	
	@Test

	
public void Home_Login_ValidUserName_ValidPwd( ) throws Exception {
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
		/* str="update KYC_Home_Login_Screen set Status =''";
	    int rs2 = con.executeUpdate(str);*/
		
		 str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		logger = report.createTest(methodName);
		

		while (rs.next()) {
			uName = rs.getField("UserName");
			pword = rs.getField("PassWord");
			expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
			loginPage.loginToKyc(uName, pword);
			 but = driver.findElement(By.xpath("//*[@id=\"form1\"]/div[4]/section[1]/div/div[1]/h2")).getText();
			 
			
			if (expectedResult.equals("Pass") && but.contains("Welcome Admin")) {
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
				
					}
			
						
		}
	
	}
	
	@Test
	 	
	public void Home_Login_InvalidUserName() throws Exception
	{
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
	      str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
	      rs = con.executeQuery(str);
	      logger = report.createTest(methodName);
		
			while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				expectedResult = rs.getField("ExpectedResult");
				System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
				 loginPage.loginToKyc(uName, pword);
				 
				 alert = driver.switchTo().alert();
				 
			     msg = alert.getText();
		
				 if (expectedResult.equals("Fail") )
				 {
				 
					 if(msg.contains("Please Check your Credentials"))
					 {
						 System.out.println("Test Is Passed");
						 alert.accept();
						 str="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
	 
	
	public void Home_Login_ValidUserName_InvalidPwd() throws Exception
	{
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
	      str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
	      rs = con.executeQuery(str);
	      logger = report.createTest(methodName);
		
			while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				expectedResult = rs.getField("ExpectedResult");
				System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
				 loginPage.loginToKyc(uName, pword);
				 alert = driver.switchTo().alert();
			     msg = alert.getText();
			
				 if (expectedResult.equals("Fail") )
				 {
				 
					 if(msg.contains("Sorry! please try later."))
					 {
						 System.out.println("Test Is Passed");
						 alert.accept();
						 str="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
 

public void Home_Login_BlankUserName_ValidPwd() throws Exception
{
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
      str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
      rs = con.executeQuery(str);
      
      logger = report.createTest(methodName);
	
		while (rs.next()) {
			uName = rs.getField("UserName");
			pword = rs.getField("PassWord");
			expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
			 loginPage.loginToKyc(uName, pword);
			 alert = driver.switchTo().alert();
		     msg = alert.getText();
		
			 if (expectedResult.equals("Fail") )
			 {
			 
				 if(msg.contains("Please Check your Credentials"))
				 {
					
					 System.out.println("Test Is Passed");
				     alert.accept();
					 str="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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


public void Home_Login_ValidUserName_BlankPwd() throws Exception
{
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
      str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
      rs = con.executeQuery(str);
      logger = report.createTest(methodName);
	
		while (rs.next()) {
			uName = rs.getField("UserName");
			pword = rs.getField("PassWord");
			expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
			 loginPage.loginToKyc(uName, pword);
			 alert = driver.switchTo().alert();
		     msg = alert.getText();
		
			 if (expectedResult.equals("Fail") )
			 {
			 
				 if(msg.contains("Please Check your Credentials"))
				 {
					
					 System.out.println("Test Is Passed");
				     alert.accept();
					 str="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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


public void Home_Login_BlankUserName_BlankPwd
() throws Exception
{
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
      str = "Select * from KYC_Home_Login_Screen where TestCaseName ='"+methodName+"'";
      rs = con.executeQuery(str);
      logger = report.createTest(methodName);
	
		while (rs.next()) {
			uName = rs.getField("UserName");
			pword = rs.getField("PassWord");
			expectedResult = rs.getField("ExpectedResult");
			System.out.println(rs.getField("UserName") + " ::: " + rs.getField("Password"));
			 loginPage.loginToKyc(uName, pword);
			 alert = driver.switchTo().alert();
		     msg = alert.getText();
		
			 if (expectedResult.equals("Fail") )
			 {
			 
				 if(msg.contains("Please Check your Credentials"))
				 {
					
					 System.out.println("Test Is Passed");
				     alert.accept();
					 str="update KYC_Home_Login_Screen set Status ='PASS' where  TestCaseName = '"+methodName+"'";
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
	 basePage.closeBrowser();
}

 
	/* public void getTestResult(ITestResult result){
		 if(result.getStatus()==ITestResult.FAILURE)
		 {
		 logger.fail(result.getName());
		 logger.fail(result.getThrowable());
		 }else if(result.getStatus() == ITestResult.SKIP){
		 logger.skip("Test Case Skipped is "+result.getName());
		 } 
 }*/
		 

 
@AfterClass
public void closingAllConnections() {
	rs.close();
	con.close();
}


}

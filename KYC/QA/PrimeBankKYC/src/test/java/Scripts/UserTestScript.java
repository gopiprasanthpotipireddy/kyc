package Scripts;

import java.util.ArrayList;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
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

import Pages.LoginPage;
import Pages.UserRegistrationPage;

public class UserTestScript extends DriverBase {
	
	DriverBase base;
	LoginPage loginpage;
	UserRegistrationPage urp;
	ExtentTest test;
	ITestResult result;
	Connection con;
	Recordset rs ;
	int rs2;
	Fillo fillo;
	String uName, pword , str, expectedResult;
	private By info  = By.xpath("//*[@id=\"intro\"]/div/div/div/h1");
	WebElement element ;

	
	@BeforeClass
	public void initializingConnections() throws FilloException {
		fillo = new Fillo();
		
		con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		str="update KYC_RegistrationPage set Status =''";
	    rs2 = con.executeUpdate(str);
	}
	

	@BeforeMethod
	public void setUp() throws Exception {
		base = new DriverBase();
		base.initialization();
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
				WebElement submit = driver.findElement(By.id("ContentPlaceHolder1_submit"));
				submit.click();
				
				/*WebElement hs = driver.findElement(By.xpath("//*[@id=\"sidebar\"]/div[1]/h3"));
				hs.getLocation();*/
			//	WebElement newcase = driver.findElement(B)
				
				WebDriverWait wait = new WebDriverWait(driver,10);
				driver.switchTo().frame(driver.findElement(By.name("iframe")));
				
				
			
			}
	}
	

@Test	 
	
	public void RegistrationFormTest_EmptyFirstName() throws Exception
	{
		
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
		
		 ArrayList<String> test = new ArrayList<String>();
		    ArrayList list = new ArrayList();
		    

			 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
			rs = con.executeQuery(str);
			System.out.println("try here");
			logger = report.createTest(methodName);
			 while (rs.next()) {
					
			test.add(rs.getField("Prefix"));
			System.out.println(test.get(0).toString());
			test.add(rs.getField("FirstName"));
			System.out.println(test.get(1).toString());
			test.add(rs.getField("MiddleName"));
			System.out.println(test.get(2).toString());
			test.add(rs.getField("LastName"));
			System.out.println(test.get(3).toString());
			test.add(rs.getField("PANNumber"));
			System.out.println(test.get(4).toString());
			test.add(rs.getField("AadharNumber"));
			System.out.println(test.get(5).toString());
			test.add(rs.getField("PassportNumber"));
			System.out.println(test.get(6).toString());
			test.add(rs.getField("Occupation"));
			System.out.println(test.get(7).toString());
			test.add(rs.getField("SourceOfFunds"));
			System.out.println(test.get(8).toString());
			test.add(rs.getField("GrossAnualIncome"));
			System.out.println(test.get(9).toString());
			test.add(rs.getField("ResidencyType"));
			System.out.println(test.get(10).toString());
			test.add(rs.getField("FlatNoOrBuildingName"));
			test.add(rs.getField("StreetName"));
			test.add(rs.getField("LandMark"));
			test.add(rs.getField("State"));
			test.add(rs.getField("City"));
			test.add(rs.getField("Pincode"));
			test.add(rs.getField("Country"));
			test.add(rs.getField("MobileNumber"));
			test.add(rs.getField("EmailId"));
			list.addAll(test);
			int size = list.size();
			System.out.println(size);
			urp.validatingRegistrationForm(list);
			expectedResult = rs.getField("ExpectedResult");
			String empty = "";
			 element = driver.findElement(By.id("ContentPlaceHolder1_first_name"));
			if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
			{
				str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
			 	System.out.println("test is failed");
			     
				logger.log(Status.INFO, methodName); 
				Assert.assertTrue(false);
			}
			
			else 
			{
				str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
			     System.out.println("Test is passed as there are  validations for empty first name");
				 Assert.assertTrue(true);
				 logger.log(Status.INFO, methodName); 
			}
		    
			 }
		
		    
		
	}
@Test
	
	public void RegistrationFormTest_EmptyMiddleName() throws Exception
	{
		
		
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
		
		 ArrayList<String> test = new ArrayList<String>();
		    ArrayList list = new ArrayList();
		    

			 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
			rs = con.executeQuery(str);
			System.out.println("try here");
			logger = report.createTest(methodName);
			 while (rs.next()) {
					
			test.add(rs.getField("Prefix"));
			System.out.println(test.get(0).toString());
			test.add(rs.getField("FirstName"));
			System.out.println(test.get(1).toString());
			test.add(rs.getField("MiddleName"));
			System.out.println(test.get(2).toString());
			test.add(rs.getField("LastName"));
			System.out.println(test.get(3).toString());
			test.add(rs.getField("PANNumber"));
			System.out.println(test.get(4).toString());
			test.add(rs.getField("AadharNumber"));
			System.out.println(test.get(5).toString());
			test.add(rs.getField("PassportNumber"));
			System.out.println(test.get(6).toString());
			test.add(rs.getField("Occupation"));
			System.out.println(test.get(7).toString());
			test.add(rs.getField("SourceOfFunds"));
			System.out.println(test.get(8).toString());
			test.add(rs.getField("GrossAnualIncome"));
			System.out.println(test.get(9).toString());
			test.add(rs.getField("ResidencyType"));
			System.out.println(test.get(10).toString());
			test.add(rs.getField("FlatNoOrBuildingName"));
			test.add(rs.getField("StreetName"));
			test.add(rs.getField("LandMark"));
			test.add(rs.getField("State"));
			test.add(rs.getField("City"));
			test.add(rs.getField("Pincode"));
			test.add(rs.getField("Country"));
			test.add(rs.getField("MobileNumber"));
			test.add(rs.getField("EmailId"));
			list.addAll(test);
			int size = list.size();
			System.out.println(size);
			urp.validatingRegistrationForm(list);
		  String empty ="";
			expectedResult = rs.getField("ExpectedResult");
			 element = driver.findElement(By.id("ContentPlaceHolder1_mid_name"));
			 
			 if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
			{
				str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
			 	System.out.println("test is failed");
			    
				logger.log(Status.INFO, methodName); 
				Assert.assertTrue(false);
			}
			else 
			{
				str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
			     System.out.println("Test is passed as there are  validations for empty middle name");
				 Assert.assertTrue(true);
				 logger.log(Status.INFO, methodName); 
			}
		    
			 }
		
		    
		
	}
@Test

public void RegistrationFormTest_EmptyLastName() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_last_name"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("test is failed");
		
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
		}
	    
		 }
	
	    
	
}
@Test
public void RegistrationFormTest_EmptyPanNumber() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_pan_num"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("test is failed");
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("Test is passed as there are  validations for empty first name");
		
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }
@Test
public void RegistrationFormTest_EmptyAadharNumber() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_aadhar_num"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("test is failed");
			
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }


@Test
public void RegistrationFormTest_EmptySourceOfFunds() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_sof"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("test is failed");
			
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }
		 
@Test
public void RegistrationFormTest_EmptyCity() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_city_name"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("test is failed");
			
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }
	


@Test
public void RegistrationFormTest_EmptyMobileNumber() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_mob_num"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("test is failed");
		
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }

@Test
public void RegistrationFormTest_EmptyFlatNoOrBuildingName() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
		test.add(rs.getField("Prefix"));
		System.out.println(test.get(0).toString());
		test.add(rs.getField("FirstName"));
		System.out.println(test.get(1).toString());
		test.add(rs.getField("MiddleName"));
		System.out.println(test.get(2).toString());
		test.add(rs.getField("LastName"));
		System.out.println(test.get(3).toString());
		test.add(rs.getField("PANNumber"));
		System.out.println(test.get(4).toString());
		test.add(rs.getField("AadharNumber"));
		System.out.println(test.get(5).toString());
		test.add(rs.getField("PassportNumber"));
		System.out.println(test.get(6).toString());
		test.add(rs.getField("Occupation"));
		System.out.println(test.get(7).toString());
		test.add(rs.getField("SourceOfFunds"));
		System.out.println(test.get(8).toString());
		test.add(rs.getField("GrossAnualIncome"));
		System.out.println(test.get(9).toString());
		test.add(rs.getField("ResidencyType"));
		System.out.println(test.get(10).toString());
		test.add(rs.getField("FlatNoOrBuildingName"));
		test.add(rs.getField("StreetName"));
		test.add(rs.getField("LandMark"));
		test.add(rs.getField("State"));
		test.add(rs.getField("City"));
		test.add(rs.getField("Pincode"));
		test.add(rs.getField("Country"));
		test.add(rs.getField("MobileNumber"));
		test.add(rs.getField("EmailId"));
		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_flatno"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("test is failed");
			
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }
@Test
public void RegistrationFormTest_EmptyEmailId() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_RegistrationPage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				test.add(rs.getField("Prefix"));
	            test.add(rs.getField("FirstName"));
	            test.add(rs.getField("MiddleName"));
	            test.add(rs.getField("LastName"));
		        test.add(rs.getField("PANNumber"));
		        test.add(rs.getField("AadharNumber"));
		        test.add(rs.getField("PassportNumber"));
		        test.add(rs.getField("Occupation"));
	            test.add(rs.getField("SourceOfFunds"));
		        test.add(rs.getField("GrossAnualIncome"));
		        test.add(rs.getField("ResidencyType"));
		        test.add(rs.getField("FlatNoOrBuildingName"));
		        test.add(rs.getField("StreetName"));
		        test.add(rs.getField("LandMark"));
		        test.add(rs.getField("State"));
		        test.add(rs.getField("City"));
		        test.add(rs.getField("Pincode"));
		        test.add(rs.getField("Country"));
		        test.add(rs.getField("MobileNumber"));
		        test.add(rs.getField("EmailId"));
		        list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingRegistrationForm(list);
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("ContentPlaceHolder1_email_id"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_RegistrationPage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		 	System.out.println("test is failed");
			
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_RegistrationPage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
		     System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
	     	}
		 }
		 }

	
	@AfterMethod
	public void tearDown() {
		 base.closeBrowser();

		
	}

	 
	@AfterClass
	public void closingAllConnections() {
		rs.close();
		con.close();
	}


	
}
		
		
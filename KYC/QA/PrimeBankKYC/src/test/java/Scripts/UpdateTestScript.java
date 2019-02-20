package Scripts;

import java.awt.Robot;
import java.awt.event.KeyEvent;
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

import Pages.AadharLoginPage;
import Pages.LoginPage;
import Pages.NSDLLoginPage;
import Pages.UpdatePage;
import Pages.UserRegistrationPage;

public class UpdateTestScript extends DriverBase {
	DriverBase base;
	UpdatePage updatepage;
	LoginPage loginpage;
	UpdatePage urp;
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
	
	private By upld = By.id("Button1");
	private By file1 = By.id("FileUpload1");
	private By submit = By.id("Update");
	WebDriverWait wait6;

	@BeforeClass
	
	public void intializingConnections() throws FilloException{
		  fillo = new Fillo();
		  
		  con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		  str="update KYC_Home_Login_Screen set Status =''";
		     rs2 = con.executeUpdate(str);
		 }
		 

	
	@BeforeMethod
	public void setUp() throws Exception {
		base = new DriverBase();
		base.initialization();
	    updatepage = new UpdatePage(driver);		
		loginpage = new LoginPage(driver);
		urp = new  UpdatePage(driver);
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
				
				WebElement verify = driver.findElement(By.xpath("//*[@id=\"recent\"]/ul/li[1]/a")); //view submissions link
				verify.click();				
				System.out.println("Clicked Submissions");
							
													
				WebElement verify0 = driver.findElement(By.id("iframe")); //iframe link								
				Thread.sleep(1000);
				System.out.println("iframe");	
				driver.switchTo().frame("iframe");
				
			
							
				WebElement verify4 = driver.findElement(By.id("GridView1")); //table				
			
			
								
				WebElement verify5= driver.findElement(By.id("GridView1_Edit_0")); // edit link
				verify5.click();
				
				//WebElement verify6= driver.findElement(By.xpath("//*[@id=\"form1\"]/div[3]/h1")); // edit link
		
				
				
			}
	}



@Test	 
	
	public void Update_FileUpload() throws Exception
	{
		
		System.out.println("Update_FileUpload");
		String methodName = new Object() {}
	      .getClass()
	      .getEnclosingMethod()
	      .getName();
	      
		
		 ArrayList<String> test = new ArrayList<String>();
		    ArrayList list = new ArrayList();
		    

			 str = "Select * from KYC_UpdatePage where TestCaseName ='"+methodName+"'";
			rs = con.executeQuery(str);
			System.out.println("try here");
			logger = report.createTest(methodName);
			 while (rs.next()) {
					
			test.add(rs.getField("ApplicantID"));
			System.out.println(test.get(0).toString());
			
			test.add(rs.getField("FirstName"));
			System.out.println(test.get(1).toString());
			
		
			test.add(rs.getField("Gender"));
			System.out.println(test.get(2).toString());
			
			test.add(rs.getField("PANNumber"));			
			System.out.println(test.get(3).toString());
			
			
			test.add(rs.getField("AadharNumber"));
			System.out.println(test.get(4).toString());
		
			test.add(rs.getField("PassportNumber"));
			System.out.println(test.get(5).toString());
			
			list.addAll(test);
			int size = list.size();
			System.out.println(size);
			urp.validatingUpdateForm(list);

			WebElement ele = driver.findElement(file1);
			ele.click(); 
			driver.switchTo()
            .activeElement()
            .sendKeys("C:\\A\\K.txt");
			WebElement upld1 =  driver.findElement(upld);
			  upld1.click();
			  System.out.println("hello robot");
			    Alert alert = driver.switchTo().alert();
				
			expectedResult = rs.getField("ExpectedResult");
			//String empty = "";
			if( expectedResult.contains("PASS")||(alert.getText().contains("Uploaded file successfully")))
			{
				alert.accept();
				str="update KYC_UpdatePage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
				System.out.println("Test is passed as file uploaded successfully");
				logger.log(Status.INFO, methodName); 
				Assert.assertTrue(true);
			}
			
			else 
			{
				str="update KYC_UpdatePage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
			     rs2 = con.executeUpdate(str);
				System.out.println("test is failed");
				 Assert.assertTrue(false);
				 logger.log(Status.INFO, methodName); 
			}
		    
			 }
	}
/*		
@Test
public void Update_EmptyFirstName() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_UpdatePage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
			 test.add(rs.getField("ApplicantID"));
				System.out.println(test.get(0).toString());
				
				test.add(rs.getField("FirstName"));
				System.out.println(test.get(1).toString());
				
				test.add(rs.getField("Gender"));
				System.out.println(test.get(2).toString());
				
				test.add(rs.getField("PANNumber"));			
				System.out.println(test.get(3).toString());
				
				
				
				test.add(rs.getField("AadharNumber"));
				System.out.println(test.get(4).toString());
			
				
				test.add(rs.getField("PassportNumber"));
				System.out.println(test.get(5).toString());
		

		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingUpdateForm(list);
		WebElement submit1 = driver.findElement(submit);
				if(submit1.isDisplayed())
					wait6= new WebDriverWait(driver,30);
				 wait6.until(ExpectedConditions.elementToBeClickable(submit1));
					
					submit1.click();
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("first_name"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_UpdatePage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			System.out.println("test is failed");
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_UpdatePage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			 System.out.println("Test is passed as there are  validations for empty first name");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
		}
	    
		 }
}



@Test
public void Update_EmptyGender() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_UpdatePage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
				
			 test.add(rs.getField("ApplicantID"));
				System.out.println(test.get(0).toString());
				
				test.add(rs.getField("FirstName"));
				System.out.println(test.get(1).toString());
				
				
				
				test.add(rs.getField("Gender"));
				System.out.println(test.get(2).toString());
				
				test.add(rs.getField("PANNumber"));			
				System.out.println(test.get(3).toString());
				
				
				test.add(rs.getField("AadharNumber"));
				System.out.println(test.get(4).toString());
		
				
				test.add(rs.getField("PassportNumber"));
				System.out.println(test.get(5).toString());
				

		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingUpdateForm(list);
		WebElement submit1 = driver.findElement(submit);
				if(submit1.isDisplayed())
					wait6= new WebDriverWait(driver,30);
				 wait6.until(ExpectedConditions.elementToBeClickable(submit1));
					
					submit1.click();
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("Gender"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_UpdatePage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			System.out.println("test is failed");
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_UpdatePage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			 System.out.println("Test is passed as there are  validations for empty Gender");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
		}
	    
		 }
}

@Test
public void Update_EmptyPanNumber() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_UpdatePage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
			 test.add(rs.getField("ApplicantID"));
				System.out.println(test.get(0).toString());
				
				test.add(rs.getField("FirstName"));
				System.out.println(test.get(1).toString());
				
				
				
				test.add(rs.getField("Gender"));
				System.out.println(test.get(2).toString());
				
				test.add(rs.getField("PANNumber"));			
				System.out.println(test.get(3).toString());
				
				
				test.add(rs.getField("AadharNumber"));
				System.out.println(test.get(4).toString());
			
				test.add(rs.getField("PassportNumber"));
				System.out.println(test.get(5).toString());

		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingUpdateForm(list);
		WebElement submit1 = driver.findElement(submit);
				if(submit1.isDisplayed())
					wait6= new WebDriverWait(driver,30);
				 wait6.until(ExpectedConditions.elementToBeClickable(submit1));
					
					submit1.click();
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("pan_num"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_UpdatePage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		    rs2 = con.executeUpdate(str);
			System.out.println("test is failed");
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_UpdatePage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		    rs2 = con.executeUpdate(str);
			System.out.println("Test is passed as there are  validations for empty Pan Number");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
		}
	    
		 }
}



@Test
public void Update_EmptyAadharNumber() throws Exception
{
	
	
	String methodName = new Object() {}
      .getClass()
      .getEnclosingMethod()
      .getName();
      
	
	 ArrayList<String> test = new ArrayList<String>();
	    ArrayList list = new ArrayList();
	    

		 str = "Select * from KYC_UpdatePage where TestCaseName ='"+methodName+"'";
		rs = con.executeQuery(str);
		System.out.println("try here");
		logger = report.createTest(methodName);
		 while (rs.next()) {
			 test.add(rs.getField("ApplicantID"));
				System.out.println(test.get(0).toString());
				
				test.add(rs.getField("FirstName"));
				System.out.println(test.get(1).toString());
			
				test.add(rs.getField("Gender"));
				System.out.println(test.get(2).toString());
				
				test.add(rs.getField("PANNumber"));			
				System.out.println(test.get(3).toString());
			
				
				test.add(rs.getField("AadharNumber"));
				System.out.println(test.get(4).toString());
		
				
				test.add(rs.getField("PassportNumber"));
				System.out.println(test.get(5).toString());
			

		list.addAll(test);
		int size = list.size();
		System.out.println(size);
		urp.validatingUpdateForm(list);
		WebElement submit1 = driver.findElement(submit);
				if(submit1.isDisplayed())
					wait6= new WebDriverWait(driver,30);
				 wait6.until(ExpectedConditions.elementToBeClickable(submit1));
					
					submit1.click();
		expectedResult = rs.getField("ExpectedResult");
		String empty = "";
		 element = driver.findElement(By.id("aadhar_num"));
		if( (expectedResult.equals("PASS"))&&(!(element.getText().contains(empty))))
		{
			str="update KYC_UpdatePage set Status ='FAIL' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			System.out.println("test is failed");
			logger.log(Status.INFO, methodName); 
			Assert.assertTrue(false);
		}
		
		else 
		{
			str="update KYC_UpdatePage set Status ='PASS' where  TestCaseName = '"+methodName+"'";
		     rs2 = con.executeUpdate(str);
			System.out.println("Test is passed as there are  validations for empty Aadhar Number");
			 Assert.assertTrue(true);
			 logger.log(Status.INFO, methodName); 
		}
	    
		 }
}*/

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
				 @AfterClass
					public void closingAllConnections() {
						rs.close();
						con.close();
					}

	}


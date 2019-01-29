package com.base;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.ITestResult;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeSuite;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.reporter.ExtentHtmlReporter;

public class DriverBase {

	public static WebDriver driver;
	public static Properties properties;
	public static ExtentReports report;
    public static	ExtentHtmlReporter htmlReporter;
	public static  ExtentTest logger;
	public  String path;
  
	public void initialization() throws Exception 
	{
		

		
		FileInputStream fi = new FileInputStream(
		System.getProperty("user.dir") + "\\src\\test\\resources\\config\\configuaration.properties");
		properties = new Properties();
		properties.load(fi);
		String browserType = properties.getProperty("browser");
	
		
		
		if (browserType.equals("chrome")) {
			String chromePath = "C:\\Users\\sudheerkumarn\\Downloads\\chromedriver_win32\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.chrome.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			driver = new ChromeDriver();
		}
		else if(browserType.equals("ie")) {
			String chromePath = "C:\\Drivers\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.ie.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			WebDriver driver = new ChromeDriver();
		}
		else if(browserType.equals("ff")) {
			String chromePath = "C:\\Drivers\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.gecko.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			WebDriver driver = new ChromeDriver();
		}
		else
			{
				String chromePath = "C:\\Drivers\\chromedriver.exe";

				// Setting the webdriver.chrome.driver property to set executable's
				System.setProperty("webdriver.ie.driver", chromePath);

				//// Creating a driver object referencing WebDriver interface &
				//// Instantiating driver object
				WebDriver driver = new ChromeDriver();
			}
	

		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.get( properties.getProperty("url"));
		//driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}


	    public void readExcel(String filePath,String fileName,String sheetName) throws IOException{

	    //Create an object of File class to open xlsx file

	    File file =    new File(filePath+"\\"+fileName);

	    //Create an object of FileInputStream class to read excel file

	    FileInputStream inputStream = new FileInputStream(file);


	}
	    
	    @BeforeSuite
		public void init(){
	    	
			path = System.getProperty("user.dir")+"\\data\\reports";
			 File file = new File(path);
			 System.out.println(path);
		        if (!file.exists()) {
		        	
		            if (file.mkdir()) {
		                System.out.println("Directory is created!");
		            }
		            
		        }else {
		                System.out.println("Folder already exists!");
		            }
		        
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		    Date date = new Date();  
		   String dynamicName = formatter.format(date).replace("/","_").replace(" ","_").replace(":","_");
			report = new ExtentReports();
			 // Provide the Report Path
			 htmlReporter = new ExtentHtmlReporter(path+ "/myExtentReport4"+dynamicName+".html");
			 report.attachReporter(htmlReporter);
	    }
	    
	    
	    @AfterTest
	    public void endreport()
	    {
	    report.flush();
	    }

	    
	    @AfterClass

	public void closeBrowser() {
		driver.quit();
	}
	    @AfterMethod
	    

	   	 public void getTestResult(ITestResult result){
	   		 if(result.getStatus()==ITestResult.FAILURE)
	   		 {
	   		 logger.fail(result.getTestName());
	   		 logger.fail(result.getThrowable());
	   		 }else if(result.getStatus() == ITestResult.SKIP){
	   		 logger.skip("Test Case Skipped is "+result.getTestName());
	   		 } 
	   		 
	   		else if(result.getStatus() == ITestResult.SUCCESS){
		   		 logger.pass("Test Case passed is "+result.getName());
		   		 } 
	    }
	   		 
	   	 
	    

	   
	   	 
	   	
	    
	    
	    
	

}


package tests;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class NewTest {

	public static void main(String[] args) {

System.out.println(System.getProperty("user.dir"));
		// Creating a driver object referencing WebDriver interface
		 String chromePath="C:\\Drivers\\chromedriver.exe";
		
		 //Setting the webdriver.chrome.driver property to set executable's
		   System.setProperty("webdriver.chrome.driver" , chromePath);
		  
		  
		 //// Creating a driver object referencing WebDriver interface & Instantiating driver object 
		 WebDriver driver = new ChromeDriver();
		  
		  //the path of the first screen 
		  driver.get("file:///C:/Users/ritikasingh/AppData/Local/Temp/Temp1_HTML_Screens.zip/LoginPage.htmls");
		  //defining the 
		  WebElement username = driver.findElement(By.name("username"));
		  WebElement password = driver.findElement(By.name("password"));
		  
		  username.sendKeys("Forget");					
	      password.sendKeys("forget#123");					
	      System.out.println("Text Field Set");		
	      WebElement login = driver.findElement(By.id("submit"));					
	      login.click();			
	      System.out.println("Login Done with Click");
	      driver.get("file:///C:/Users/ritikasingh/AppData/Local/Temp/Temp1_HTML_Screens.zip/CheckList.html");
		  //Closing the browser
		  //driver.quit();
		 
	}

}

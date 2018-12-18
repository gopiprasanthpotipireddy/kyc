package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import javafx.scene.control.Alert;

public class LoginPage extends BasePage {


	public void loginToKyc() 
	 {
		driver.findElement(By.name("username")).sendKeys(properties.getProperty("username"));
		driver.findElement(By.name("password")).sendKeys(properties.getProperty("password"));
		driver.findElement(By.id("submit")).click();
		
	 }
	public  void handleAlert(){
        if(isAlertPresent())
        {
             driver.switchTo().alert().accept();
             driver.get( properties.getProperty("url1"));
           
          }
        }
        public  boolean isAlertPresent(){
        
            driver.switchTo().alert();
            return true;
            
        
}
}
	
		  
		


		
		//Find out whether it is an alert or not
		//If it is an alert switch to the alert and click ok
		//check for any of the link/button

		
	

	



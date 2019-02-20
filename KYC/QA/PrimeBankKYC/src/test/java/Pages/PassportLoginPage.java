
package Pages;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.base.DriverBase;

public class PassportLoginPage extends DriverBase {
	WebDriver driver;
	

	public PassportLoginPage(WebDriver driver) {
		this.driver = driver;
	}
    
	private By username = By.id("Text_Box1");
	private By passwordTextBox = By.id("TextBox2");
	private By loginBtn = By.id("Button3");

	public void loginToPassport(String userName, String password) throws InterruptedException {
	
		ArrayList tabs = new ArrayList (driver.getWindowHandles());
		System.out.println("windows size"+tabs.size());
		System.out.println("windows 1"+tabs.get(0));
		System.out.println("windows 2"+tabs.get(1));
		
		driver.switchTo().window((String) tabs.get(1));
		Thread.sleep(1000);
		
		WebDriverWait wait = new WebDriverWait(driver, 10);
	
      String class1 =  driver.getPageSource();
     
        
    	
        System.out.println("page title"+driver.getTitle());
   
		WebElement username1 = driver.findElement(By.id("Text_Box1"));
		
		
		WebElement passwordTxtBox1 = driver.findElement(passwordTextBox);

		
		if (username1.isDisplayed())
			username1.sendKeys(userName);
		
		
		if (passwordTxtBox1.isDisplayed())
			passwordTxtBox1.sendKeys(password);


		WebElement signInBtn = driver.findElement(loginBtn);
		
		
		if (signInBtn.isDisplayed())	
			signInBtn.click();

	}

}


package Pages;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.base.DriverBase;

public class NSDLLoginPage extends DriverBase {
WebDriver driver;
	
	
	public NSDLLoginPage(WebDriver driver) {
		this.driver = driver;
	}
	private By username = By.id("TextBox3");
	private By passwordTextBox = By.id("TextBox4");
	private By loginBtn = By.id("Button3");
	
	public  void loginToNsdl(String userName,String password) throws InterruptedException {
		
		ArrayList tabs = new ArrayList (driver.getWindowHandles());
		System.out.println("windows size"+tabs.size());
		System.out.println("windows 1"+tabs.get(0));
		System.out.println("windows 2"+tabs.get(1));
		
		driver.switchTo().window((String) tabs.get(1));
		Thread.sleep(1000);
		
		WebDriverWait wait = new WebDriverWait(driver, 10);
		
		  Thread.sleep(1000);	        	    	
	        System.out.println("page title"+driver.getTitle());
	    	WebElement username2 = driver.findElement(By.id("TextBox3"));
			   
		WebElement passwordTxtBox = driver.findElement(passwordTextBox);
		if(passwordTxtBox.isDisplayed())
			passwordTxtBox.sendKeys(password);
		WebElement username1 = driver.findElement(username);
		if(username1.isDisplayed())
		 username1.sendKeys(userName);
		WebElement signInBtn = driver.findElement(loginBtn);
		if(signInBtn.isDisplayed())
			signInBtn.click();
		  Thread.sleep(3000);
	   
	      
	}
	

}


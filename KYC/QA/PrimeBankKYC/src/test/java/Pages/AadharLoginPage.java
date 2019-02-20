
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

public class AadharLoginPage extends DriverBase {
	WebDriver driver;
	

	public AadharLoginPage(WebDriver driver) {
		this.driver = driver;
	}
    
	private By username = By.id("Username");
	private By passwordTextBox = By.id("Password");
	private By loginBtn = By.id("Button3");

	public void loginToAadhar(String userName, String password) throws InterruptedException {
		
		
		ArrayList tabs = new ArrayList (driver.getWindowHandles());
		System.out.println("windows size"+tabs.size());
		System.out.println("windows 1"+tabs.get(0));
		System.out.println("windows 2"+tabs.get(1));
		
		driver.switchTo().window((String) tabs.get(1));
		Thread.sleep(1000);
		
		
		WebDriverWait wait = new WebDriverWait(driver, 10);
		WebElement Category_Body = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("form1")));
        driver.findElement(By.id("form1"));
        System.out.println("form is found");
      String class1 =  driver.getPageSource();
    
        Thread.sleep(1000);
        
    	
        System.out.println("page title"+driver.getTitle());
     
		WebElement username1 = driver.findElement(By.xpath("//*[@id=\"Username\"]"));
		
		
		WebElement passwordTxtBox1 = driver.findElement(passwordTextBox);
		System.out.println("Username found");
		
		if (username1.isDisplayed())
			username1.sendKeys(userName);
		System.out.println("Username entered");
	
		if (passwordTxtBox1.isDisplayed())
			passwordTxtBox1.sendKeys(password);
		System.out.println("Password entered");
	    Thread.sleep(1000);

		WebElement signInBtn = driver.findElement(loginBtn);
		System.out.println("SIgn In button");
		
		if (signInBtn.isDisplayed())	
			signInBtn.click();

	}

}

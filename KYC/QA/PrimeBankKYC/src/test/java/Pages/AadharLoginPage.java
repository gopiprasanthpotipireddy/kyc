
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
		// Thread.sleep(2000);
		
		ArrayList tabs = new ArrayList (driver.getWindowHandles());
		System.out.println("windows size"+tabs.size());
		System.out.println("windows 1"+tabs.get(0));
		System.out.println("windows 2"+tabs.get(1));
		
		driver.switchTo().window((String) tabs.get(1));
		Thread.sleep(3000);
		
		WebDriverWait wait = new WebDriverWait(driver, 10);
		WebElement Category_Body = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("form1")));
        driver.findElement(By.id("form1"));
        System.out.println("form is found");
      String class1 =  driver.getPageSource();
     // System.out.println(class1);
      
     // driver.switchTo().activeElement();
      
      
      
     //   String  handle= driver.getWindowHandle();
       // System.out.println("handle"+handle);
        Thread.sleep(10000);
        
    	
        System.out.println("page title"+driver.getTitle());
       // driver.switchTo().activeElement();
		WebElement username1 = driver.findElement(By.xpath("//*[@id=\"Username\"]"));
		
		//Thread.sleep(2000);
		WebElement passwordTxtBox1 = driver.findElement(passwordTextBox);
		System.out.println("Username found");
		//Thread.sleep(1000);
		if (username1.isDisplayed())
			username1.sendKeys(userName);
		System.out.println("Username entered");
		// Thread.sleep(2000);
		if (passwordTxtBox1.isDisplayed())
			passwordTxtBox1.sendKeys(password);
		System.out.println("Password entered");
	 Thread.sleep(2000);

		WebElement signInBtn = driver.findElement(loginBtn);
		System.out.println("SIgn In button");
		// Thread.sleep(2000);
		if (signInBtn.isDisplayed())	
			signInBtn.click();

	}

}

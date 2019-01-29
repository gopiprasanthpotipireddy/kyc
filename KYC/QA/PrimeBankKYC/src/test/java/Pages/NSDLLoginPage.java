package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.base.DriverBase;

public class NSDLLoginPage extends DriverBase {
WebDriver driver;
	
	
	public NSDLLoginPage(WebDriver driver) {
		this.driver = driver;
	}
	private By username = By.id("UsernameText");
	private By passwordTextBox = By.id("PasswordText");
	private By loginBtn = By.id("LoginButton");
	
	public  void loginToNsdl(String userName,String password) throws InterruptedException {
		WebElement passwordTxtBox = driver.findElement(passwordTextBox);
		if(passwordTxtBox.isDisplayed())
			passwordTxtBox.sendKeys(password);
		WebElement username1 = driver.findElement(username);
		if(username1.isDisplayed())
		 username1.sendKeys(userName);
		WebElement signInBtn = driver.findElement(loginBtn);
		if(signInBtn.isDisplayed())
			signInBtn.click();
	   
	      
	}
	

}

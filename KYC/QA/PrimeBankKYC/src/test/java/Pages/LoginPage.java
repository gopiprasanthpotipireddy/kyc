package Pages;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.base.DriverBase;

public class LoginPage extends DriverBase {
	
WebDriver driver;
	
	
	public LoginPage(WebDriver driver) {
		this.driver = driver;
	}
	private By username = By.id("TextBox1");
	private By passwordTextBox = By.id("TextBox2");
	private By loginBtn = By.id("button");
	
	
	public  void loginToKyc(String userName,String password) throws InterruptedException {
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

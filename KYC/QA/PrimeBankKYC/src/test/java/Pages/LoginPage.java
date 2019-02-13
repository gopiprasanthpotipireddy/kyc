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
	

	private By usernameTXT = By.id("ContentPlaceHolder1_TextBox1");
	private By passwordTextBox = By.id("ContentPlaceHolder1_TextBox2");
	private By loginBtn = By.id("ContentPlaceHolder1_button");
	
	
	public  void loginToKyc(String userName,String password) throws InterruptedException {
		WebElement username1 = driver.findElement(usernameTXT);
		if(username1.isDisplayed())
		 username1.sendKeys(userName);
		WebElement passwordTxtBox = driver.findElement(passwordTextBox);
		if(passwordTxtBox.isDisplayed())
			passwordTxtBox.sendKeys(password);
	
		WebElement signInBtn = driver.findElement(loginBtn);
		if(signInBtn.isDisplayed())
			signInBtn.click();
		
	      
	}
	

}


package Pages;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.base.DriverBase;

public class PassportVerificationPage extends DriverBase {
	
WebDriver driver;
	
	
	public PassportVerificationPage(WebDriver driver) {
		this.driver = driver;
	}
	private By passportTextBox = By.id("TextBox5");
	private By verify = By.id("Button2");

	public void PassportVerify(String Passport1) throws InterruptedException {
		System.out.println("print....");
	/*	Alert alert = driver.switchTo().alert();
		  alert.accept();*/
		WebElement PassportTextBox = driver.findElement(passportTextBox);
		Thread.sleep(2000);
		//System.out.println("finding Passport");
		if(PassportTextBox.isDisplayed())
			PassportTextBox.sendKeys(Passport1);
		//System.out.println("ENTERING PASSPORT");
		Thread.sleep(3000);
		WebElement verifybtn = driver.findElement(verify);
		if(verifybtn.isDisplayed())
			verifybtn.click();
		System.out.println("clicked verify");
	
		
	}
	
}

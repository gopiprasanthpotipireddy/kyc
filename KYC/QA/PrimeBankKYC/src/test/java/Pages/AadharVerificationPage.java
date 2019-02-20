
package Pages;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.base.DriverBase;

public class AadharVerificationPage extends DriverBase {
	
WebDriver driver;
	
	
	public AadharVerificationPage(WebDriver driver) {
		this.driver = driver;
	}
	private By aadharTextBox = By.id("AadharNumber");
	private By verify = By.id("VerifyButton");

	public void AadharVerify(String AadharNumber1) throws InterruptedException {
		System.out.println("print....");
	
		WebElement AadharTextBox = driver.findElement(aadharTextBox);
		Thread.sleep(2000);
		
		if(AadharTextBox.isDisplayed())
			AadharTextBox.sendKeys(AadharNumber1);
		
		Thread.sleep(3000);
		WebElement verifybtn = driver.findElement(verify);
		if(verifybtn.isDisplayed())
			verifybtn.click();
		System.out.println("clicked verify");
	
		
	}
	
}
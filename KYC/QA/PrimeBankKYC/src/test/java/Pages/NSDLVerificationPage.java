

package Pages;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.base.DriverBase;

public class  NSDLVerificationPage extends DriverBase {
	
WebDriver driver;
	
	
	public  NSDLVerificationPage(WebDriver driver) {
		this.driver = driver;
	}
	private By panTextBox = By.id("TextBox5");
	private By verify = By.id("Button2");

	public void NSDLVerify(String PanNumber1) throws InterruptedException {
		System.out.println("print....");
	
		WebElement PanTextBox = driver.findElement(panTextBox);
		Thread.sleep(1000);
		
		if(PanTextBox.isDisplayed())
			PanTextBox.sendKeys(PanNumber1);
		
		Thread.sleep(1000);
		WebElement verifybtn = driver.findElement(verify);
		if(verifybtn.isDisplayed())
			verifybtn.click();
		System.out.println("clicked verify");
	
		
	}
	
}
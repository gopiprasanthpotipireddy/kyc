package pages;

import java.util.Iterator;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import javafx.scene.control.Alert;

public class LoginPage extends DriverPage {
// Method to pass argument to the login page
	public void loginToGuru(String username,String password) {
		driver.findElement(By.name("email")).sendKeys(username);//properties.getProperty("username")
		driver.findElement(By.name("password")).sendKeys(password);//properties.getProperty("password")
		//driver.findElement(By.xpath("//input[@type='submit']")).submit();
		 WebElement login = driver.findElement(By.name("submit"));					
	      login.click();
		
	
	}
	//successful login
	public void verifySuccessLogin() {
		List<WebElement> element =  driver.findElements(By.xpath("/html/body/div[3]"));
		
		Iterator<WebElement> itr = element.iterator();
		if(itr.hasNext())
				{
			 String val=itr.next().getAttribute("innerText");
			 System.out.println("hello here" +val);
			System.out.println("Login successful when both credentials are correct.");
				}
		else
		{
			System.out.println("login is failing");
		}
		
	}
	//invalid login method.
	  public void verifyInvalidLogin() {
		List<WebElement> element =  driver.findElements(By.xpath("//*[@id=\"login-form\"]/div[2]/span/b"));
		Iterator<WebElement> itr = element.iterator();
		if(itr.hasNext())
			System.out.println("page has validations for invalid login.");
		else
			System.out.println("page has no validations  for invalid login.");
	}
	  
	  //to check empty credentials.
	  public void verifyEmptyCredentials()
	  {
		 WebElement element = driver.findElement(By.xpath("/html/body/div[3]/h4"));
		 String val=element.getAttribute("innerText");
		 System.out.println("hello here" +val);

		  if(val.isEmpty())
		  {
			  System.out.println("validation is not present if credentials are empty");
		  }
		  else
		  {
			  System.out.println("no validation message is present");
		  }
	  }
	  //to check wrong credentials.
	  public void verifyWrongCredentials()
	  {
		  WebElement element = driver.findElement(By.xpath("//*[@id=\"login-form\"]/div[2]/span/b"));
		  if(element.isDisplayed())
		  {
			  System.out.println("validation is present if credentials are wrong");
		  }
		  else
		  {
			  System.out.println("no validation message is present");
		  }
	  }
	  
	 /* public void registrationToPage()
	  {
		  driver.findElement(By.xpath(" /html/body/div[3]/a")).click();
	  }*/
	
	

	/*public void handleAlert() {
		if (isAlertPresent()) {
			driver.switchTo().alert().accept();
			driver.get(properties.getProperty("url1"));

		}
	}

	public boolean isAlertPresent() {

		driver.switchTo().alert();
		return true;

	}*/
}



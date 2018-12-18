package pages;
import java.util.Iterator;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import pages.DriverPage;

public class Registration extends DriverPage 
{
	//method to enter data to the page.
	 public void registrationToPage(String title , String f_name , String L_name , 
			 String phone ,String year ,String month , String date, String L_period ,String occ,String street , 
			 String city , String country ,String postcode , String Email, String Password ,String Cpassword )
	  {
		  driver.findElement(By.xpath(" /html/body/div[3]/a")).click();
		  driver.findElement(By.id("user_title")).sendKeys(title);
		  driver.findElement(By.id("user_firstname")).sendKeys(f_name);
		  driver.findElement(By.name("lastname")).sendKeys(L_name);
		  driver.findElement(By.name("phone")).sendKeys(phone);
		  driver.findElement(By.name("year")).sendKeys(year);
		  driver.findElement(By.name("month")).sendKeys(month);
		  driver.findElement(By.name("date")).sendKeys(date);
		 // WebElement FRadioBtn = driver.findElement(By.name("licencetype));
		  //WebElement PRadioBtn = driver.findElement(By.id(licencetype_f));
		  driver.findElement(By.name("licenceperiod")).sendKeys(L_period);
		  driver.findElement(By.name("occupation")).sendKeys(occ);
		  driver.findElement(By.name("street")).sendKeys(street);
		  driver.findElement(By.name("city")).sendKeys(city);
		  driver.findElement(By.name("county")).sendKeys(country);
		  driver.findElement(By.name("post_code")).sendKeys(postcode);
		  driver.findElement(By.name("email")).sendKeys(Email);
		  driver.findElement(By.name("password")).sendKeys(Password);
		  driver.findElement(By.name("c_password")).sendKeys(Cpassword);
		  WebElement create = driver.findElement(By.name("submit"));					
	      create.click();
		  
	  }
	 //method to verify for empty fields.
	 public void verifyPageValidations()
	 {
		 
		 List<WebElement> elementName = driver.findElements(By.xpath("/html/body/div[3]/h3"));
		 if(elementName.isEmpty())
		 {
			 System.out.println("page has validations.it is not allowing to register if any field is empty.");
			 
		 }
		 else
		 {
			 System.out.println("validations required. it is allowing to register if fields are empty.");
		 }
	 }
	 //method to verify the password fields.
	 public void verifyPasswords()
	 {
		 List<WebElement> elementName = driver.findElements(By.xpath("//*[@id=\"new_user\"]/div[5]/div[3]/span"));
		 if(elementName.isEmpty())
		 {
			 System.out.println("page has no validations and is  required");
			 
		 }
		 else
		 {
			 System.out.println("validations are present for the password field");
		 }
			
		 }

}

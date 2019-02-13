package Pages;

import java.util.ArrayList;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class UserRegistrationPage {
	
WebDriver driver;
	
	
	public UserRegistrationPage(WebDriver driver) {
		this.driver = driver;
	}
	
	private By prefix = By.id("ContentPlaceHolder1_ddlPrefix");
	private By fname = By.id("ContentPlaceHolder1_first_name");
	private By mname = By.id("ContentPlaceHolder1_mid_name");
	private By lname = By.id("ContentPlaceHolder1_last_name");
	private By pannumber = By.id("ContentPlaceHolder1_pan_num");
	private By aadharnum = By.id("ContentPlaceHolder1_aadhar_num");
	private By passportnum = By.id("ContentPlaceHolder1_pass_num");
	private By occ = By.id("ContentPlaceHolder1_occ_dd");
	private By funsource = By.id("ContentPlaceHolder1_sof");
	private By grossanualincome = By.id("ContentPlaceHolder1_gross_inc");
	private By residencetype = By.id("ContentPlaceHolder1_res_type");
	private By flatno = By.id("ContentPlaceHolder1_flatno");
	private By streetnum = By.id("ContentPlaceHolder1_street_no");
	private By landmark = By.id("ContentPlaceHolder1_land");
	private By state = By.id("ContentPlaceHolder1_stat");
	private By city = By.id("ContentPlaceHolder1_city_name");
	private By pincode = By.id("ContentPlaceHolder1_pin_code");
	private By country = By.id("ContentPlaceHolder1_count");
	private By mobile = By.id("ContentPlaceHolder1_mob_num");
	private By email = By.id("ContentPlaceHolder1_email_id");
	private By submit = By.id("ContentPlaceHolder1_Button2");
	private Object WebDriverWait;
	WebDriverWait wait6;

	
	public void validatingRegistrationForm( ArrayList list)throws Exception
	{
		
		for(int i =0; i < list.size() ;)
		{
			Select select = new Select(driver.findElement(prefix));
			select.selectByValue(list.get(i).toString());
			i++;
			
			WebElement fname1 = driver.findElement(fname);
			if(fname1.isDisplayed())
			{
				fname1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement mname1 = driver.findElement(mname);
			if(mname1.isDisplayed())
			{
				mname1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement lname1 = driver.findElement(lname);
			if(lname1.isDisplayed())
			{
				lname1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement pan1 = driver.findElement(pannumber);
			if(pan1.isDisplayed())
			{
				pan1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement aadhar = driver.findElement(aadharnum);
			if(aadhar.isDisplayed())
			{
				aadhar.sendKeys(list.get(i).toString());
			}
			i++;
			 
			WebElement passport = driver.findElement(passportnum);
			if(passport.isDisplayed())
			{
				passport.sendKeys(list.get(i).toString());
			}
			i++;
			
			Select occupation = new Select(driver.findElement(occ));
			WebDriverWait wait = new WebDriverWait(driver,10);
			 wait.until(ExpectedConditions.elementToBeClickable(occ));
			occupation.selectByValue(list.get(i).toString());
			i++;
			Select sourceoffund = new Select(driver.findElement(funsource));
			WebDriverWait wait1 = new WebDriverWait(driver,10);
			 wait1.until(ExpectedConditions.elementToBeClickable(funsource));
			sourceoffund.selectByValue(list.get(i).toString());
			i++;
			Select grossanualincome1 = new Select(driver.findElement(grossanualincome));
			WebDriverWait wait2 = new WebDriverWait(driver,10);
			 wait2.until(ExpectedConditions.elementToBeClickable(grossanualincome));
			grossanualincome1.selectByValue(list.get(i).toString());
			i++;
			Select residence = new Select(driver.findElement(residencetype));
			WebDriverWait wait3 = new WebDriverWait(driver,30);
			 wait3.until(ExpectedConditions.elementToBeClickable(residencetype));
			residence.selectByValue(list.get(i).toString());
			i++;
			
			WebElement flat = driver.findElement(flatno);
			if(flat.isDisplayed())
			{
				flat.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement street = driver.findElement(streetnum);
			if(street.isDisplayed())
			{
				street.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement land = driver.findElement(streetnum);
			if(street.isDisplayed())
			{
				street.sendKeys(list.get(i).toString());
			}
			i++;
			
			Select state1 = new Select(driver.findElement(state));
			state1.selectByValue(list.get(i).toString());
			i++;
			
			WebElement city1 = driver.findElement(city);
			if(city1.isDisplayed())
			{
				city1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement pin = driver.findElement(pincode);
			if(pin.isDisplayed())
			{
				pin.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement count = driver.findElement(country);
			if(count.isDisplayed())
			{
				count.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement mob = driver.findElement(mobile);
			if(mob.isDisplayed())
			{
				mob.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement email1 = driver.findElement(email);
			if(email1.isDisplayed())
			{
				email1.sendKeys(list.get(i).toString());
			}
			break;
			}
		 WebElement submit1 = driver.findElement(submit);
			if(submit1.isDisplayed())
				wait6= new WebDriverWait(driver,30);
			 wait6.until(ExpectedConditions.elementToBeClickable(submit1));
				
				submit1.click();
			/*Alert alert = driver.switchTo().alert();
			alert.accept();
			*/
		
	}
	
	
}

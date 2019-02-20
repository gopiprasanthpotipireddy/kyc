
package Pages;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.util.ArrayList;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class UpdatePage {
	
WebDriver driver;
	
	
	public UpdatePage(WebDriver driver) {
		this.driver = driver;
		
		
	}
	
	private By ApplicantID= By.id("app_id");
	private By FirstName = By.id("first_name");
	
	private By Gender = By.id("Gender");
	private By PanNumber = By.id("pan_num");
	
	private By AadharNumber = By.id("aadhar_num");
	private By PassportNumber = By.id("pass_num");
	private By submit = By.id("Update");
	private By file1 = By.id("FileUpload1");
	private By upld = By.id("btnUpload");
	private Object WebDriverWait;
	WebDriverWait wait6;

	
	public void validatingUpdateForm( ArrayList list)throws Exception
	{
		
		for(int i =0; i < list.size() ;)
		{
			WebElement appid = driver.findElement(ApplicantID);
					if(appid.isDisplayed())
					{
						appid.sendKeys(list.get(i).toString());
					}
					i++;
			
			WebElement fname1 = driver.findElement(FirstName);
			if(fname1.isDisplayed())
			{
				fname1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement gender1 = driver.findElement(Gender);
			if(gender1.isDisplayed())
			{
				gender1.sendKeys(list.get(i).toString());
			}
			i++;
					
			WebElement pan1 = driver.findElement(PanNumber);
			if(pan1.isDisplayed())
			{
				pan1.sendKeys(list.get(i).toString());
			}
			i++;
			
			WebElement aadhar = driver.findElement(AadharNumber);
			if(aadhar.isDisplayed())
			{
				aadhar.sendKeys(list.get(i).toString());
			}
			i++;
			 
			WebElement passport = driver.findElement(PassportNumber);
			if(passport.isDisplayed())
			{
				passport.sendKeys(list.get(i).toString());
			}
			i++;
			
			
		
			
			    
	
				
				
					}
			}
	}
	
	


package Scripts;

import java.util.ArrayList;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.ITestResult;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.aventstack.extentreports.ExtentTest;
import com.base.DriverBase;
import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;

import Pages.LoginPage;
import Pages.UserRegistrationPage;

public class NSDLTestScript extends DriverBase{
	
	
	DriverBase base;
	LoginPage loginpage;
	UserRegistrationPage urp;
	ExtentTest test;
	ITestResult result;
	Connection con;
	Recordset rs ;
	int rs2;
	Fillo fillo;
	String uName, pword , str;
	private By info  = By.xpath("//*[@id=\"jetmenu\"]/li[2]/a");
	WebElement element ;

	
	@BeforeClass
	public void initializingConnections() throws FilloException {
		fillo = new Fillo();
		//con = fillo.getConnection( "C:\\Users\\sudheerkumarn\\Desktop\\sample\\Banking\\KYC_Poc.xlsx");
		con = fillo.getConnection(System.getProperty("user.dir")+ "\\data\\KYC_Poc.xlsx");
		str="update KYC_RegistrationPage set Status =''";
	    rs2 = con.executeUpdate(str);
	}
	

	@BeforeMethod
	public void setUp() throws Exception {
		base = new DriverBase();
		base.initialization();
		loginpage = new LoginPage(driver);
		urp = new UserRegistrationPage(driver);
		WebElement info1 = driver.findElement(info);
		info1.click();
		 str = "Select * from KYC_Home_Login_Screen where TestCaseName ='Home_Login_ValidUserName_ValidPwd'";
			rs = con.executeQuery(str);
			while (rs.next()) {
				uName = rs.getField("UserName");
				pword = rs.getField("PassWord");
				loginpage.loginToKyc(uName, pword);
				WebElement submit = driver.findElement(By.id("submit"));
				submit.click();
				WebDriverWait wait = new WebDriverWait(driver,10);
				driver.switchTo().frame(driver.findElement(By.name("iframe")));
				 ArrayList<String> test = new ArrayList<String>();
				    ArrayList list = new ArrayList();
				    

					 str = "Select * from KYC_RegistrationPage where TestCaseName =' RegistrationFormTest_EmptyFirstName'";
					rs = con.executeQuery(str);
					System.out.println("try here");
				
					 while (rs.next()) {
							
					test.add(rs.getField("Prefix"));
					System.out.println(test.get(0).toString());
					test.add(rs.getField("FirstName"));
					System.out.println(test.get(1).toString());
					test.add(rs.getField("MiddleName"));
					System.out.println(test.get(2).toString());
					test.add(rs.getField("LastName"));
					System.out.println(test.get(3).toString());
					test.add(rs.getField("PANNumber"));
					System.out.println(test.get(4).toString());
					test.add(rs.getField("AadharNumber"));
					System.out.println(test.get(5).toString());
					test.add(rs.getField("PassportNumber"));
					System.out.println(test.get(6).toString());
					test.add(rs.getField("Occupation"));
					System.out.println(test.get(7).toString());
					test.add(rs.getField("SourceOfFunds"));
					System.out.println(test.get(8).toString());
					test.add(rs.getField("GrossAnualIncome"));
					System.out.println(test.get(9).toString());
					test.add(rs.getField("ResidencyType"));
					System.out.println(test.get(10).toString());
					test.add(rs.getField("FlatNoOrBuildingName"));
					test.add(rs.getField("StreetName"));
					test.add(rs.getField("LandMark"));
					test.add(rs.getField("State"));
					test.add(rs.getField("City"));
					test.add(rs.getField("Pincode"));
					test.add(rs.getField("Country"));
					test.add(rs.getField("MobileNumber"));
					test.add(rs.getField("EmailId"));
					list.addAll(test);
					int size = list.size();
					System.out.println(size);
					urp.validatingRegistrationForm(list);
					WebElement element = driver.findElement(By.xpath("/html/body/center/table/tbody/tr[2]/td[13]"));
					element.click();
				
				
				
			
			}
	}

}
}

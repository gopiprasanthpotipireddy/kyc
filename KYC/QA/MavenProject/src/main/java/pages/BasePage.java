package pages;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BasePage {

	public static WebDriver driver;
	public static Properties properties;

	public void initialization() throws Exception 
	{
		System.out.println("I am here");
		
		FileInputStream fi = new FileInputStream(
		System.getProperty("user.dir") + "\\src\\main\\resources\\config\\configuaration.properties");
		properties = new Properties();
		properties.load(fi);
		String browserType = properties.getProperty("browser");
		
		if (browserType.equals("chrome")) {
			String chromePath = "C:\\Drivers\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.chrome.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			driver = new ChromeDriver();
		}
		else if(browserType.equals("ie")) {
			String chromePath = "C:\\Drivers\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.ie.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			WebDriver driver = new ChromeDriver();
		}
		else if(browserType.equals("ff")) {
			String chromePath = "C:\\Drivers\\chromedriver.exe";

			// Setting the webdriver.chrome.driver property to set executable's
			System.setProperty("webdriver.gecko.driver", chromePath);

			//// Creating a driver object referencing WebDriver interface &
			//// Instantiating driver object
			WebDriver driver = new ChromeDriver();
		}
		else
			{
				String chromePath = "C:\\Drivers\\chromedriver.exe";

				// Setting the webdriver.chrome.driver property to set executable's
				System.setProperty("webdriver.ie.driver", chromePath);

				//// Creating a driver object referencing WebDriver interface &
				//// Instantiating driver object
				WebDriver driver = new ChromeDriver();
			}
	

		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.get( properties.getProperty("url"));
	}
		
	}
	
	



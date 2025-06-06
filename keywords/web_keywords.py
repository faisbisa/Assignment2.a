from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from robot.api.deco import keyword
from SeleniumLibrary import SeleniumLibrary

class WebKeywords:
    def __init__(self):
        self.driver = None
        self.selib = SeleniumLibrary()

    @keyword("Open Login Page")
    def open_login_page(self, url):
        chrome_options = Options()
        # Nonaktifkan password manager
        chrome_options.add_experimental_option("prefs", {
            "credentials_enable_service": False,
            "profile.password_manager_enabled": False
        })
        self.driver = webdriver.Chrome(options=chrome_options)
        self.driver.maximize_window()
        self.driver.get(url)
        self.selib.register_driver(self.driver, alias="SauceBrowser")

    @keyword("Close Browser")
    def close_browser(self):
        if self.driver:
            self.driver.quit()

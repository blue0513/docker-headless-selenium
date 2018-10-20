#!/usr/bin/ruby
require 'selenium-webdriver'

# Headless Mode
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
options.add_argument('--no-sandbox')

# Select Browser
driver = Selenium::WebDriver.for :chrome, options: options

# Open Google.com
driver.get 'https://google.com'

# Take Screenshot
driver.save_screenshot('./sample.png')

# Quit
driver.close

require 'selenium-webdriver'

PROXY = "217.29.63.240:16935" # IP:PORT or HOST:PORT

options = Selenium::WebDriver::Chrome::Options.new(args: [
    # 'headless',
    '--proxy-server=http://%s' % PROXY,
    # 'user-data-dir=/home/difry/project/selenium/chrome_path'
  ])

driver = Selenium::WebDriver.for(:chrome, options: options)
driver.get('https://myip.com')

sleep(2000)

require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(args: [
    # 'headless',
    '--proxy-server=<217.29.63.240:16935>',
    'user-data-dir=/home/difry/project/selenium/chrome_path'
  ])


driver = Selenium::WebDriver.for(:chrome, options: options)
driver.get('https://myip.com')

sleep(20)


# driver.get('https://myip.com')
# myip = driver.find_element(:id, 'ip').text
# puts "My ip now is #{myip}"
# driver.quit



## wait
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
# begin
#   element = wait.until { driver.find_element(:id => "some-dynamic-element") }
# ensure
#   driver.quit
# end

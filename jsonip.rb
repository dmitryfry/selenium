require 'net/http'
require 'json'


url = 'https://api.myip.com'
uri = URI(url)
response = Net::HTTP.get(uri)
puts JSON.parse(response)['ip']

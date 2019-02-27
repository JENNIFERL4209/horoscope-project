require 'unirest'
require 'pp'

url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
uri = URI(url)  
uri.query = 'sign=aries&day=today'  # this part will change to user inputed sign
uri_string = uri.to_s
response = Unirest.post uri_string # dynamic API link
result = response.body # Parsed body # hash
puts result[color]

require 'unirest'
require 'pp'

response = Unirest.post "https://aztro.sameerkumar.website?sign=aries&day=today"
# response.code # Status code #200-ok
# puts response.headers # Response headers
puts response.body # Parsed body
puts response.raw_body # Unparsed body
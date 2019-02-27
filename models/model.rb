require 'unirest'
require 'pp'


# url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
# uri = URI(url)  
# uri.query = 'sign=aries&day=today'  # this part will change to user inputed sign
# uri_string = uri.to_s
# response = Unirest.post uri_string # dynamic API link
# result = response.body # Parsed body # hash
# puts result
# class Horoscope
#     def initialize(sign)
#       @sign = sign 
#     end
    
    # def get_info
        # url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
        # uri = URI(url)  
        # uri.query = 'sign=' + @user_sign + '&day=today'  # this part will change to user inputed sign
        # uri_string = uri.to_s
        # response = Unirest.post uri_string # dynamic API link
        # result = response.body # Parsed body # hash
        # puts result
        
    url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
    uri = URI(url)  
    uri.query = 'sign=aries&day=today'  # this part will change to user inputed sign
    uri_string = uri.to_s
    response = Unirest.post uri_string # dynamic API link
    result = response.body # Parsed body # hash
    puts result
    # end
# end

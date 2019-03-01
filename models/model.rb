require 'unirest'

# url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
# uri = URI(url)  
# uri.query = 'sign=aries&day=today'  # this part will change to user inputed sign
# uri_string = uri.to_s
# response = Unirest.post uri_string # dynamic API link
# result = response.body # Parsed body # hash
# puts result

def get_info(user_sign)
    url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # the API URL
    uri = URI(url)  
    uri.query = "sign=#{user_sign}&day=today" # this part will change to user inputed sign
    puts user_sign
    uri_string = uri.to_s
    puts uri_string
    response = Unirest.post uri_string # dynamic API link
    result = response.body # Parsed body # hash
    result
end

def zodiac_sign(month, day) 
  if month == 1
    if day < 20
      sign = 'Capricorn'
    else 
      sign = 'Aquarius'  
    end
  elsif month == 2
    if day < 19
      sign = 'Aquarius'
    else 
      sign = 'Pisces'  
    end
  elsif month == 3
    if day < 21
      sign = 'Pisces'
    else 
      sign = 'Aries'  
    end
  elsif month == 4
    if day < 20
      sign = 'Aries'
    else 
      sign = 'Taurus'  
    end
  elsif month == 5
    if day < 21
      sign = 'Taurus'
    else 
      sign = 'Gemini'  
    end
  elsif month == 6
    if day < 21
      sign = 'Gemini'
    else 
      sign = 'Cancer'  
    end
  elsif month == 7
    if day < 23
      sign = 'Cancer'
    else 
      sign = 'Leo'  
    end
  elsif month == 8
    if day < 23
      sign = 'Leo'
    else 
      sign = 'Virgo'  
    end
  elsif month == 9
    if day < 23
      sign = 'Virgo'
    else 
      sign = 'Libra'  
    end
  elsif month == 10
    if day < 23
      sign = 'Libra'
    else 
      sign = 'Scorpio'  
    end
  elsif month == 11
    if day < 22
      sign = 'Scorpio'
    else 
      sign = 'Sagittarius'  
    end
  elsif month == 12
    if day < 22
      sign = 'Sagittarius'
    else 
      sign = 'Capricorn'
    end
  end
  puts sign
end


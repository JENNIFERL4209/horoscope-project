require 'unirest'

def get_info
  url = 'https://aztro.sameerkumar.website?sign=sign&day=day' # API URL
  uri = URI(url)  
  uri.query = "sign=#{zodiac_sign(@user_date)}&day=today" # change user inputed sign based on date
  uri_string = uri.to_s
  puts uri_string
  response = Unirest.post uri_string # dynamic API link
  result = response.body # Parsed body # hash
  result
end

def get_compatibility(user_sign)
  result = get_info
  result["compatibility"].downcase
end

def get_compatibility_info
  url = 'https://aztro.sameerkumar.website?sign=sign&day=day'
  uri = URI(url)  
  uri.query = "sign=#{(@user_compatibility)}&day=today" # provide compatibility based on sign
  uri_string = uri.to_s
  puts uri_string
  response = Unirest.post uri_string 
  result = response.body 
  result
end

def zodiac_sign(date) 

  date_array = date.split('/') # change user date input into an array
  if date_array[0].to_i == 1 #january
    if date_array[1].to_i < 20 #before january 20
      sign = 'capricorn'
    else
      sign = 'aquarius'
    end
  elsif date_array[0].to_i == 2 #february
    if date_array[1].to_i < 19 #before february 19
      sign = 'aquarius'
    else
      sign = 'pisces'
    end
  elsif date_array[0].to_i == 3
    if date_array[1].to_i < 21
      sign = 'pisces'
    else
      sign = 'aries'
    end
  elsif date_array[0].to_i == 4
    if date_array[1].to_i < 20
      sign = 'aries'
    else
      sign = 'taurus'
    end
  elsif date_array[0].to_i == 5
    if date_array[1].to_i < 21
      sign = 'taurus'
    else
      sign = 'gemini'
    end
  elsif date_array[0].to_i == 6
    if date_array[1].to_i < 21
      sign = 'gemini'
    else
      sign = 'cancer'
    end
  elsif date_array[0].to_i == 7
    if date_array[1].to_i < 23
      sign = 'cancer'
    else
      sign = 'leo'
    end
  elsif date_array[0].to_i == 8
    if date_array[1].to_i < 23
      sign = 'leo'
    else
      sign = 'virgo'
    end
  elsif date_array[0].to_i == 9
    if date_array[1].to_i < 23
      sign = 'virgo'
    else
      sign = 'libra'
    end
  elsif date_array[0].to_i == 10
    if date_array[1].to_i < 23
      sign = 'libra'
    else
      sign = 'scorpio'
  end
  elsif date_array[0].to_i == 11
    if date_array[1].to_i < 22
      sign = 'scorpio'
    else
      sign = 'sagittarius'
    end
  elsif date_array[0].to_i == 12
    if date_array[1].to_i < 22
      sign = 'sagittarius'
    else
      sign = 'capricorn'
    end
  end
    sign
end


def get_lucky_number(user_sign)
  result = get_info
  result["lucky_number"]
end

def get_lucky_number_fact(number)
  url ="http://numbersapi.com/#{number}" # the API URL
  uri = URI(url)  
  uri_string = uri.to_s
  puts uri_string
  response = Unirest.get uri_string # dynamic API link
  result = response.body # Parsed body # hash
  result
end
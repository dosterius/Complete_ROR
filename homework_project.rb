#Assign all cities and codes to hash
city = {
    'katowice' => 30123,
    'tychy' => 43100,
    'mikolow' => 42100,
    'sosnowiec' => 40123,
    'bedzin' => 50100,
    'bierun' => 50324,
    'bielsko-biala' => 68421,
    'warszawa' => 76098,
    'poznan' => 90753,
    'rzeszow' => 86653
    }

def cityList(cities)
  cities.each { |k, v| puts k }
end

def cityCode(cities,u_resp)
  result_code = cities[u_resp]
end

loop do
  puts "Do you want to lookup a city name?(Y/N)"
  answer = gets.chomp.upcase
  if answer != "Y"
    break
  end

  puts "What city code would you like to display?" 
  puts ""
  puts "The list of available cities:"
  puts ""
  city_names = cityList(city)
  puts ""
  puts "Please enter the city name:"
  answer = gets.chomp.downcase
  puts ""
  result = cityCode(city,answer)
  if result.nil?
    puts "Could not find city called #{answer}"
  else
    puts "The code for specified city is: #{result}"
  end
end
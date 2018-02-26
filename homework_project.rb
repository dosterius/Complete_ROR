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

loop do
  puts "Do you want to lookup a city name?(Y/N)"

  answer = gets.chomp
  if answer != "Y"
    break
  end

puts "What city code would you like to display?" 
puts ""
puts "The list of available cities:"
puts ""
city_names = city.each { |k, v| puts k }
puts ""
puts "Please enter the city name:"
answer = gets.chomp
puts ""
puts "The code for specified city is:"
result = city.select { |k,v| puts v if k == answer }  

end








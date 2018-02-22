puts "Hello enter in your first name"
first_name = gets.chomp
puts "Hello enter in your last name"
last_name = gets.chomp
puts "Welcome #{first_name} #{last_name} to the analyzer!"
puts "Your first name has #{first_name.length} charakters and your last name has #{last_name.length} charakters"
puts "In reverse order your name is #{first_name.reverse}"
puts "In reverse order your name is #{first_name.reverse}"
full_name = first_name + " " + last_name
puts "Your full name in reverse is #{full_name.reverse}" 
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{first_number.to_i * second_number.to_i}"

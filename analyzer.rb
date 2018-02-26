def multiply(first_number,second_number)
  first_number.to_f * second_number.to_f
end

def divide(first_number,second_number)
  first_number.to_f / second_number.to_f
end

def substract(first_number,second_number)
  first_number.to_f - second_number.to_f
end

def mod(first_number,second_number)
  first_number.to_f % second_number.to_f
end

# puts "Hello enter in your first name"
# first_name = gets.chomp # this is going to get input from user
# puts "Now.. please enter in your last name"
# last_name = gets.chomp
# puts "Welcome #{first_name} #{last_name} to the analyzer!"
# puts "Your first name has #{first_name.length} charakters and your last name has #{last_name.length} charakters"
# puts "In reverse order your name is #{first_name.reverse}"
# puts "In reverse order your name is #{last_name.reverse}"
# full_name = first_name + " " + last_name
# puts "Your full name in reverse is #{full_name.reverse}" 

puts "What do you want to do? 1) multyply 2) divide 3) substract 4) find remainder"
prompt = gets.chomp

puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp

if  prompt.to_i == 1
  puts "You have chosen to multiply #{first_number} with #{second_number}"
  puts result = multiply(first_number,second_number)
elsif prompt.to_i == 2
  puts "You have chosen to divide #{first_number} by #{second_number}"
  puts result = divide(first_number,second_number)
elsif prompt.to_i == 3
  puts "You have chosen to substract #{second_number} from #{first_number}"
  puts result = substract(first_number,second_number)
elsif prompt.to_i == 4
  puts "You have chosen to find the remainder"
  puts result = mod(first_number,second_number)
else
  puts "You have made an invalid choice. The number #{prompt} is not in scope. Please chose numbers betwen 1 and 4"
end 
  

puts "The result is: #{result}"







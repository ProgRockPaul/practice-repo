
# puts "Hey what\'s your first name?"
# first = gets.chomp
# puts "And, what\'s your middle name?"
# middle = gets.chomp
# puts "And, what\'s your last name?"
# last = gets.chomp
# puts "Your name is #{first} #{middle} #{last}"

# puts "What\'s your favourite number"
# num1 = gets.chomp.to_i
# puts "Give me another and I'll add it."
# num2 = gets.chomp.to_i
# puts "Great! #{num1} + #{num2} = #{num1 + num2}"

# puts "What\'s your favourite number"
# num1 = gets.chomp.to_i
# puts "That is great, but I think #{num1 * 3} is a wayyyy better number... "

# puts "Give me a fruit"
# fruit = gets.chomp.upcase
# puts "Give me an animal"
# animal = gets.chomp.upcase
# puts "Finally, give me a weapon"
# weapon = gets.chomp.upcase
# puts "#{animal} likes to eat #{fruit} while weilding a #{weapon}"
#
# if animal = "bear"
#   puts "I don't understand why bears like #{fruit}S and #{weapon}S !?!?"
# end

# I want a car to start forty miles from home and end up at home. The prompt will ask "How far do you want to drive?"

# I want to drive from the mall to home, and its 40 miles away.

# car = 0
#
#   if car == 0
#     puts "can you drive me home, im about 40 miles from here?"
#     gets.chomp
#     car += 40
#     puts "#{car} miles! thanks for the ride chump!"
#   end

# sing me 99 bottles of beer on the wall
i = (1..99)
  i.each do |i|
    puts "would you like me to sing a song?"
    gets.chomp
    puts "okay!"
    puts "#{i} bottles of beer on the wall!"
    i += 1
  until i >= 99
  end
end
    # if i.each >= (99)
  # end

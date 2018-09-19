puts "Welcome to Ada's Computer Candy Machine!" +
"\n(All candy provided is virtual.)"

#Prompt user for money
print "How much money to you have? ($) "
money = gets.chomp.to_f

#Let user know the choices
puts "OK so you have $ "+ "%.2f" % money + "\nThis is what we have in store:" +
"\n A $0.65 Twix" +
"\n B $0.50 Chips" +
"\n C $0.75 Nutter Butter" +
"\n D $0.65 Peanut Butter Cup" +
"\n E $0.55 Juicy Fruit Gum"

# Ask what candy does the user want to buy
print "What would you like to buy? (A,B,C,D,E)"
candy_choice = gets.chomp.capitalize

#Give candy to user & balance or let user know if insufficient funds

if candy_choice == "A" && money >= 0.65
  balance = money - 0.65
  puts "Here is your Twix! Your balance is $ " + "%.2f" % balance + "."
elsif candy_choice == "B" && money >= 0.50
  balance = money - 0.50
  puts "Here are your chips! Your balance is $ " + "%.2f" % balance + "."
elsif candy_choice == "C" && money >= 0.75
  balance = money - 0.75
  puts "Here is your Nutter Butter! Your balance is $ " + "%.2f" % balance + "."
elsif candy_choice == "D" && money >= 0.65
  balance = money - 0.65
  puts "Here is your Peanut Butter Cup! Your balance is $ " + "%.2f" % balance + "."
elsif candy_choice == "E" && money >= 0.55
  balance = money - 0.55
  puts "Here is your Juicy Fruit Gum! Your balance is $ " + "%.2f" % balance + "."
else
  puts "Sorry, no money, no candy!"
end

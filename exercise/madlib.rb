# Prompt user for input
puts "Welcome to my MadLib program. Please respond to the following prompts:"
print "What is your name?: "
name = gets.chomp

print "Enter a weapon: "
weapon = gets.chomp

print "Enter a noun with >2 syllables: "
noun = gets.chomp

print "Enter a verb, ending with '-ing': "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter a name of a dessert: "
dessert = gets.chomp

print "Enter an occupation: "
occupation = gets.chomp

print "Enter another occupation, which starts with a vowel: "
second_occupation = gets.chomp


# Use inputs for Shakespeare's Life's Brief Candle (MacBeth)
puts "Here is your Madlib... "
puts "\nLife's Brief " + dessert.capitalize + " by " + name.capitalize + " Shakes" + weapon.downcase +
"\n\n" + noun.capitalize + ", and " + noun.capitalize + ", and " + noun.capitalize + "," +
"\nCreeps in this " + verb + " pace from day to day," +
"\nTo the last syllable of recorded time;" +
"\nAnd all our " + noun + "s have lighted fools" +
"\nThe way to " + adjective.upcase + " death." +
"\nOut, out, brief " + dessert + "!" +
"\nLife's but a walking shadow, a poor " + occupation + "," +
"\nThat struts and frets his hour upon the " + noun + "," +
"\nAnd then is heard no more. It is a tale" +
"\nTold by an " + second_occupation + ", full of sound and fury," +
"\nSignifying nothing."


# Actual literary work of art:
# Tomorrow, and tomorrow, and tomorrow,
# Creeps in this petty pace from day to day,
# To the last syllable of recorded time;
# And all our yesterdays have lighted fools
# The way to dusty death. Out, out, brief candle!
# Life's but a walking shadow, a poor player,
# That struts and frets his hour upon the stage,
# And then is heard no more. It is a tale
# Told by an idiot, full of sound and fury,
# Signifying nothing.

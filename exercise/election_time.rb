nominees = ["Minnie Mouse", "Goofy", "Donald Duck"]
puts "Welcome to my Elections Program \nThe nominees are #{nominees}"
minnie_votes = 0
goofy_votes = 0
donald_votes = 0
votes = 0

while votes < 10
  print "Who are you voting for? "
  vote = gets.chomp
  votes += 1
  if vote == "Minnie Mouse"
    minnie_votes += 1
  elsif vote == "Goofy"
    goofy_votes += 1
  elsif vote == "Donald Duck"
    donald_votes += 1

end

winner = "Nobody... there are no votes!" #redundant!!
if minnie_votes > donald_votes and minnie_votes > goofy_votes
  winner = "Minnie Mouse!!"
elsif donald_votes > minnie_votes and donald_votes > goofy_votes
  winner = "Donald Duck!!"
elsif goofy_votes > minnie_votes and goofy_votes > donald_votes
  winner = "Goofy!!"
elsif minnie_votes == goofy_votes or minnie_votes == donald_votes or goofy_votes == donald_votes
  winner = "No one won the majority! We have a tie!"

end

end


puts "\n\nThe tribe has spoken and we chose: " + winner + "\n..." +
"\nVote Summary:" +
"\nMinnie Mouse has #{minnie_votes} vote(s)" +
"\nGoofy has #{goofy_votes} vote(s)" +
"\nDonald Duck has #{donald_votes} vote(s)"

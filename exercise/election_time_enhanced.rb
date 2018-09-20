nominees = ["Minnie Mouse", "Goofy", "Donald Duck"]
puts "\nWelcome to my Elections Program :) " +
"\nThe nominees are #{nominees[0..1].join(", ")} and #{nominees[-1]}."

puts "\nCast your votes!\n"
no_of_voters = 10
election_summary = []
votes = []
votes_sum = []

#Prompt voters for votes, then store in an array
no_of_voters.times do | n |
  print "Vote ##{n + 1}:  "
  votes << gets.chomp
end

#Iterate on each nominee, tally the votes and store data in an array of hashes
nominees.each do | x |
  nominee_summary = {
    :nominee => x,
    :total_votes => votes.count(x)
  }
  votes_sum << votes.count(x)
  election_summary << nominee_summary
end

#Nominee with highest number of votes
winner_idx = 0

until votes_sum[winner_idx] == votes_sum.max
  winner_idx += 1
end

winner = election_summary[winner_idx][:nominee]

#Election Results
puts "\n\nThe tribe has spoken and we chose: " + winner + "\n..." +
"\nVote Summary:\n"

i = 0
nominees.each do | y |
  puts "#{y} has #{election_summary[i][:total_votes]} vote(s)"
  i += 1
end


# minnie_votes = 0
# goofy_votes = 0
# donald_votes = 0
# votes = 0
#
# while votes < 10
#   print "Who are you voting for? "
#   vote = gets.chomp
#   votes += 1
#   if vote == "Minnie Mouse"
#     minnie_votes += 1
#   elsif vote == "Goofy"
#     goofy_votes += 1
#   elsif vote == "Donald Duck"
#     donald_votes += 1
#
# end
#
# winner = "Nobody... there are no votes!" #redundant!!
# if minnie_votes > donald_votes and minnie_votes > goofy_votes
#   winner = "Minnie Mouse!!"
# elsif donald_votes > minnie_votes and donald_votes > goofy_votes
#   winner = "Donald Duck!!"
# elsif goofy_votes > minnie_votes and goofy_votes > donald_votes
#   winner = "Goofy!!"
# elsif minnie_votes == goofy_votes or minnie_votes == donald_votes or goofy_votes == donald_votes
#   winner = "No one won the majority! We have a tie!"
#
# end
#
# end

# puts "\n\nThe tribe has spoken and we chose: " + winner + "\n..." +
# "\nVote Summary:" +
# "\nMinnie Mouse has #{minnie_votes} vote(s)" +
# "\nGoofy has #{goofy_votes} vote(s)" +
# "\nDonald Duck has #{donald_votes} vote(s)"

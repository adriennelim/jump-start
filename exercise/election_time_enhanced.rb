#Opening statement
def greetings (nominees)
  puts "\nWelcome to my Elections Program :) " +
  "\nThe nominees are: #{nominees.join(", ")}. " +
  "\nCast your votes!\n"
end

#Prompt voters for votes, then store in an array
def get_votes(no_of_voters)
  votes = []
  no_of_voters.times do | n |
    print "Vote ##{n + 1}: "
    votes << gets.chomp
  end
  return votes
end

# Iterate on each nominee, tally the votes and store data in an array of hashes

def calculate_votes(nominees, no_of_voters)
  votes = get_votes(no_of_voters)
  votes_sum = []
  election_summary = []

  nominees.each do | x |
    nominee_summary = {
      :nominee => x,
      :total_votes => votes.count(x)
    }
    votes_sum << votes.count(x)
    election_summary << nominee_summary
  end
  return [election_summary,votes_sum]
end


#Find the idx of nominee with highest votes
def find_winner (votes_sum)
  winner_idx = 0
  until votes_sum[winner_idx] == votes_sum.max
    winner_idx += 1
  end
  return winner_idx
end

#Shortlist the original list to handle ties
def shortlist_nominees (nominees,votes_sum,election_summary)
  idx = 0
  votes_sum.each do | a |
    idx += 1
    if a != votes_sum.max
      nominees.delete(election_summary[idx-1][:nominee])
    end
  end
  return nominees
end

#Main Election Program
#If there are ties, rerun election with shortlisted nominees
nominees = ["Minnie Mouse", "Goofy", "Donald Duck"]
def run_election (nominees, no_of_voters)
  greetings(nominees)
  voting_results = calculate_votes(nominees, no_of_voters)
  election_summary = voting_results[0]
  votes_sum = voting_results[1]
  
  if votes_sum.count(votes_sum.max) > 1
    new_nominees = shortlist_nominees(nominees,votes_sum,election_summary)
    run_election(new_nominees, no_of_voters)
  else winner_idx = find_winner(votes_sum)

  end

  return election_summary[winner_idx.to_i][:nominee]
end


# #Election Results
# puts "\n\nThe tribe has spoken and we chose: " + winner + "\n..." +
# "\nVote Summary:\n"
#
# i = 0
# nominees.each do | y |
#   puts "#{y} has #{election_summary[i][:total_votes]} vote(s)"
#   i += 1
# end


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

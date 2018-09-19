puts "Welcome to Ada's Walk-A-Thon Tracker" +
"\nTaking steps towards a good cause!"

print "\nEnter the earning goal for this event ($): "
goal = gets.chomp.to_f

print "Enter the amount earned per lap (per person): "
lap_earnings = gets.chomp.to_f

puts "Enter the number of laps completed by each person"
walkathon = []
no_of_walkers = 5
i = 1
no_of_walkers.times do
  print "Walker #" + "#{i} > "
  laps = gets.chomp.to_i
  earning = laps *lap_earnings
  puts "           --> Earned $" + "%.2f" % earning
  walker_data = {
    :walker => "#" + "#{i}",
    :earnings => laps * lap_earnings
  }
  walkathon << walker_data
  i += 1

end

#grand_total & Walkachamp
champ_earnings = []
grand_total = 0
idx = 0
walkathon.each do
  grand_total += walkathon[idx][:earnings]
  champ_earnings << walkathon[idx][:earnings]
  idx += 1
end

#goal met?
goal_met = "NO :-("
if grand_total >= grand_total
  goal_met = "YES!!! :-)"

#walkachamp
champ_idx = 0
until champ_earnings[champ_idx] == champ_earnings.max
  champ_idx += 1
end

walkachamp = "Walker " + walkathon[champ_idx][:walker]

end




puts "========================================"
puts "Highest Earning Walker: " + walkachamp
puts "Total amount earned: " + grand_total
puts "Goal Met? " + goal_met

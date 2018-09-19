#Create 3 arrays: student names, ID numbers, email addresses
puts "Student Account Generator\n"

student_names = []
student_ids = []
email_addresses = []
num_of_students = 5

# times loop to enter 5 student names (first & last, store as UPPERCASE)
num_of_students.times do
  print "Enter first name and last name: "
  student_names << gets.chomp.upcase
end

# times loop to generate random student ID numbers from 111111 to 999999
num_of_students.times do
  random_id = rand(111111..999999).to_s
  student_ids << random_id

end

# times loop to generate email addresses
# (first initial) + (last name) + (last 3 digits of ID) @ adadevelopersacademy.org

idx = 0
num_of_students.times do
  # student initials
  name = student_names[idx]
  initial = name[0]

  # student last name
  first_last_name = name.split(" ")
  last_name = first_last_name[-1]

  # student id - last 3 digits
  id = student_ids[idx].to_s
  three_digit_id = id[-3..-1]
  email = initial + last_name + three_digit_id + "@adadevelopersacademy"
  email_addresses << email
  idx += 1

end



# print out all names, ID numbers and email addresses
# how to print in parallel???


student_register = student_names.zip(student_ids,email_addresses)
i = 0
num_of_students.times do
  puts student_register[i]
  i += 1

end

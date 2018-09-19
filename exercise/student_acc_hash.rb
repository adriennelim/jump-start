#Create 3 arrays: student names, ID numbers, email addresses
puts "Student Account Generator\n"

student_data = []
num_of_students = 5

# times loop to enter 5 student names (first & last, store as UPPERCASE)
num_of_students.times do
  print "Enter first name and last name: "
  student_name = gets.chomp.upcase
  first_last_name = student_name.split(" ")
  student_id = rand(111111..999999).to_s
  three_digit_id = student_id[-3..-1]
  student  = {
    :name => student_name,
    :id => student_id,
    :email => student_name[0] + first_last_name[-1] + three_digit_id + "@adadevelopersacademy"
  }
  student_data << student
end

i = 0
num_of_students.times do
  puts student_data[i][:name] + " " + student_data[i][:id] + " " + student_data[i][:email]
  i += 1

end

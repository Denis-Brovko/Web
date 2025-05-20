require 'json'

def display_users
  file = File.read('users.json')
  users = JSON.parse(file)
  if users.empty?
    puts "No users found in the file."
    return
  end
  puts "\nUser Information:"
  puts "----------------"
  users.each do |user|
    puts "Name: #{user['name']}, Age: #{user['age']}"
  end
  average_age = users.sum { |user| user['age'] } / users.size.to_f
  puts "\nAverage age: #{average_age.round(2)} years"
end
display_users
User.delete_all
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.create! :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please123', :password_confirmation => 'please123'
puts 'user: ' << user2.name
user2.add_role :admin
user3 = User.create! :name => 'Third User', :email => 'user3@example.com', :password => 'secret123', :password_confirmation => 'secret123'
puts 'user: ' << user3.name
user3.add_role :admin
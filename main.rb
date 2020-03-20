require_relative 'crud'

# $LOAD_PATH << "."
# require 'crud'
#if you want to use module in a different directly, you need to put the code like uppper

users = [
        {username: "Yuma", password: "password1"},
        {username: "Kenji", password: "password2"},
        {username: "Jack", password: "password3"},
        {username: "Boby", password: "password4"},
        {username: "Jessica", password: "password5"}
]

include Crud # due to putting include module name here, you don't need 'self.method name' in the module
hashed_users = Crud.create_secure_users(users)
puts hashed_users



# require 'bundler/inline'

# gemfile true do
#  source 'http://rubygems.org'
#  gem 'bcrypt'
# end

# require 'bcrypt'

# my_password = BCrypt::Password.create("my password")
# my_password_1 = BCrypt::Password.create("my password")
# my_password_2 = BCrypt::Password.create("my password")

# puts my_password
# puts my_password_1
# puts my_password_2

# puts my_password == "my password"
# puts my_password_1 == "my password"
# puts my_password_2 == "my password"


# # my_password = BCrypt::Password.new("$2a$12$u0Fej1NpQhtOmeFnlaBr9eb9Il.F/asDXkXmNm/A2hQX6qmINHOku")
# # puts my_password == "my password"     #=> true
# # my_password == "not my password" #=> false

# a = [1, 2, 3, 4,5]
# puts rand(a)



# a = (1..10).to_a.shuffle!
# a << "Yuma"
# a.push("number")

# num = 1

# a.each do |a|
#   puts "[#{num}] : #{a}"
#   num += 1

# if a.to_i == 0 then
#   puts "fuck off!"
# elsif a.to_i.odd? then
#   puts "this number is odd."
# elsif a.to_i.even? then
#   puts "this number is even."
# end

# end

# puts a.methods

# users = [
#           {username: "Yuma", password: "password1"},
#           {username: "Kenji", password: "password2"},
#           {username: "Jack", password: "password3"},
#           {username: "Boby", password: "password4"},
#           {username: "Jessica", password: "password5"}
# ]

# def auth_user(a_username, a_password, list_of_users)
#   list_of_users.each do |user|
#     if user[:username] == a_username && user[:password] == a_password
#       return user
#     end
#   end
# end

# puts "Welcome to the authenticator"
# 25.times { print "-" }
# puts
# puts "This program will take input from the user and compare password"
# puts "If password is correct, you will get back the user object"

# attempts = 1
# while attempts < 4
#   puts "Username: "
#   username = gets.chomp.downcase
#   puts "Password: "
#   password = gets.chomp

#   authentication = auth_user(username, password, users)

#   puts "Press n to quit or any other key to continue: "
#   input = gets.chomp.downcase

#   break if input == "n"

#   attempts += 1
# end

# puts "too much"
require_relative 'crud'
# define to call a different file
module MyException
  def self.throw_exception
      puts "*Invalid number*\n*Enter a number again*"
  end
  # module_function :throw_exception
  #be able to put the code upper instead of defining ""self."method's name"
end

module MyEndprogram
  def self.throw_end_program
    exit
  end
end

class Student
  include Crud
  # call it to use Clud module
  attr_accessor :first_name, :last_name, :email, :username, :password, :post
  # change and call data outside of methods or between methods
  @@posts = []
  @@number_of_introduction = ""
  # define class variable here because these are common variable in the class

  def self.number_of_introduction
    @@number_of_introduction = @@posts.length
    return @@number_of_introduction
  end

  # def authenticating_students
  #   @@posts.each do |post|
  #     post[:password].create_hash_digest(post[:password])
  #   end
  #   puts @@posts
  # end

  def editing_introduction
      line = "\n-----------------------\n"
    loop do
      num = 0
        @@posts.each do |post|
          puts "[#{num+1}]:#{post[:first_name]}"
          num += 1
        end

      puts line

        input = gets.to_i - 1

        if @@posts[input] && input >= 0
          puts "Enter new password"
          password = gets.chomp
          @@posts[input][:password] = create_hash_digest(password)
          break
        else
          puts "Invalid number"
        end
    end
  end

  def initialize
    @first_name = ""
    @last_name = ""
    @email = ""
    @username = ""
    @password = ""
    @post = {}
  end

  def Entering_introduction
    puts "Enter your first name"
    @first_name = gets.chomp
    @post[:first_name] = @first_name

    puts "Enter your last name"
    @last_name = gets.chomp
    @post[:last_name] = @last_name

    puts "Enter your email address"
    @email = gets.chomp
    @post[:email] = @email

    puts "Enter your username"
    @username = gets.chomp
    @post[:username] = @username

    puts "Enter your password"
    @password = gets.chomp
    password = create_hash_digest(@password)
    @post[:password] = password

    @@posts << @post

    puts "\n---------------------\n"
  end

  def showing_introduction
      line = "\n-----------------------\n"
    loop do
      num = 0
        @@posts.each do |post|
          puts "[#{num+1}]:#{post[:first_name]}"
          num += 1
        end

      puts line

        input = gets.to_i - 1

        if @@posts[input] && input >= 0
          puts "First name: #{@@posts[input][:first_name]}"
          puts "Last name: #{@@posts[input][:last_name]}"
          puts "Email: #{@@posts[input][:email]}"
          puts "Username: #{@@posts[input][:username]}"
          puts "Password: #{@@posts[input][:password]}"
          puts line
          break
        else
          puts "Invalid number"
        end
    end
  end
end

loop do
  data = Student.new

  number_of_introduction = Student.number_of_introduction
  puts "number of intro : #{number_of_introduction}"

    if number_of_introduction < 1
      puts "[1]:register your introduction"
      puts "[2]:end program"
      input = gets.to_i

        if input == 1
          data.Entering_introduction
        elsif input == 2
          MyEndprogram.throw_end_program
        else
          MyException.throw_exception
        end
    else
      puts "[1]:register your introduction"
      puts "[2]:show an introduction"
      puts "[3]:edit an Entering_introduction"
      puts "[4]:end program"
      input = gets.to_i

        if input == 1
          data.Entering_introduction
        elsif input == 2
          data.showing_introduction
        elsif input == 3
          data.editing_introduction
        elsif input == 4
          MyEndprogram.throw_end_program
        else
          MyException.throw_exception
        end
    end
end

# ＠クラスの継承について、
# 子クラス < 親クラス
# ＠モジュールのインクルードについて、
# include モジュール名
#
# APIとはサーバーサイドのDB以外の総称
# ライブラリーとは、
# 開発サイドがアプリケーション実装において触れることがないメソッドの集合体
# モジュールとはアプリケーション開発においてのメソッドの集合体（とりわけクラスの継承において
# 複数のクラスから継承しメソッドを利用したい場合にモジュールにメソッドを書き出して利用する）

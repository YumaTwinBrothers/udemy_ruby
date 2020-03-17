class Momo
attr_accessor :name, :age

  def initialize
    @name = []
    @age = []
  end

  def enter_data
    puts "enter your name"
    @name = gets.chomp
    puts "enter your age"
    @age = gets.chomp.to_i
  end

  def hello
    puts "Hello! #{@name}. Your age is #{@age}."
  end
end

momo = Momo.new
momo.enter_data
momo.hello
puts momo.class



# class Momo
# attr_accessor :name, :age
#
#   def initialize
#     @name = name
#     @age = age
#   end
#
#   def hello
#     puts "Hello! #{@name}. Your age is #{@age}."
#   end
# end
#
# momo = Momo.new
#
# puts "enter your name"
# momo.name = gets.chomp
# puts "enter your age"
# momo.age = gets.chomp.to_i
#
# momo.hello
# puts momo.class

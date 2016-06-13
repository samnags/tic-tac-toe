
class Person

	attr_accessor :stats
	attr_reader :name

	def initialize
		@stats = {wins: 0, losses: 0}
	end

	def sign_up
		puts "Welcome to tic-tac-toe!  What is your name?"
		@name = gets.chomp
		puts "Hello, #{@name}."
	end
end
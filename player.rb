

class Player

	attr_accessor :identity, :symbol, :board, :choice, :computer_symbol

	def initialize(player)
		until @symbol == "X" || @symbol == "O"
			puts "Choose X or O"
			@symbol = gets.chomp
		end
		puts "Your symbol is #{@symbol}!"
		@computer_symbol = ["X", "O"].reject{|decision| decision == @symbol}[0]
		@board = Board.new 
		@board.display
	end

	def turn
		until won? == true 
			if filled? != "not filled"
			puts "IT'S OVER AND NOBODY WON"
		else 
				@choice = -4
				until @choice > 0 && @choice < 10 && taken?(@choice) == false
					puts "Please choose a number between 1 - 9" 
					@choice = gets.chomp.to_i
				end
				@board.composition[@choice - 1] = @symbol
				@board.display
				computer_turn
	end
	end
end

	def filled?
		if @board.composition.include?(" ") == true
			return "not filled"
		else
			puts "the result is a tie" #the board is filled and there is no winner
		end
	end

	def won? 
		@winning_combs=[[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
		@winning_combs.each do |array|
			if @board.composition[array[0]] == @board.composition[array[1]] && @board.composition[array[0]] == @board.composition[array[2]] && @board.composition[array[2]]!=" "
				puts "#{@board.composition[array[0]]} is the winner!"
				return true
			end
		end
	end

	def taken?(number)
		false if @board.composition[number - 1] == " "
	end

	def computer_turn
		@choice = -4
		until taken?(@choice) == false
			@choice = rand(0..8)
		end
		@board.composition[@choice - 1] = @computer_symbol
		@board.display
	end


end





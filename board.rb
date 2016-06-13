

class Board

	attr_accessor :composition

	def initialize
		@composition = []
		9.times { @composition << " " }		
			# Space.new.status}
	end

	def display
		puts "#{self.composition[0]} | #{self.composition[1]} | #{self.composition[2]}"
		puts "----------"
		puts "#{self.composition[3]} | #{self.composition[4]} | #{self.composition[5]}"
		puts "----------"
		puts "#{self.composition[6]} | #{self.composition[7]} | #{self.composition[8]}"
		puts "   "
	end
end


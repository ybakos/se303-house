class House
	def initialize
		@lyrics = ["the horse and the hound and the horn that belonged to ",
							"the farmer sowing his corn that kept ",
							"the rooster that crowed in the morn that woke ",
							"the priest all shaven and shorn that married ",
							"the man all tattered and torn that kissed ",
							"the maiden all forlorn that milked ",
							"the cow with the crumpled horn that tossed ",
							"the dog that worried ",
							"the cat that killed ",
							"the rat that ate ",
							"the malt that lay in ",
							"the house that Jack built"
						]
	end

  def line(number)
		"This is #{@lyrics.last(number).join('')}.\n"
  end

  def recite
    (1..12).map { |line_num| line(line_num) }.join("\n")
  end

	def debug_recite
		(1..12).map { |line_num| "#{line_num}: " +line(line_num) }.join("\n")
	end
end

puts House.new.debug_recite
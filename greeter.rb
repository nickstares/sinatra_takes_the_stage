
class Greeter
	def greet
		"hi, im frank..."
	end

	def quote(tag)
		categories = {
	:Alcohol => ["Alcohol may be man's worst enemy, but the bible says love your enemy.",
	 "Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
	  "I feel sorry for people who don't drink. When they wake up in the morning, that's as good as they're going to feel all day."
	  ],
	:Love=> ["....A simple I love you means more than money...",
	 "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
    ],
	:Life => ["The big lesson in life, baby, is never be scared of anyone or anything.",
	 "The best revenge is massive success.",
	  "I'm gonna live till I die."]
}
		  categories[tag].sample
	end

	
end

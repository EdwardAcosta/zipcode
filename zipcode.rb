
dial_book = {
	"new york" => "212",
	"new brunswick" => "732",
	"edision" => "908",
	"plainsboro" => "609",
	"san francisco" => "301",
	"miami" => "305",
	"palo alto" => "650",
	"evanston" => "847",
	"orlando" => "407",
	"lancaster" => "717",		
	"houston" => "281"
}


	# Get city names from dial_book hash
	# returns key values (cities)
		def get_city_names(dial_book)
		return dial_book.keys
		end

	# get area code based dial_book hash and key
		def get_area_code(dial_book, key)
		return dial_book[key]
		end

	#execution flow

 	loop do ||
		puts "Do you want to look up a zip code based on a city name Y/N ?"
		answer = gets.chomp.downcase 
		if answer =="y"
		40.times { print "-" }
		puts "" 
		# prints to screen "cities" from dial_book			
		puts get_city_names(dial_book)
	
		40.times { print "-" }
	
		puts " "
		puts "Enter city for zip code lookup -"
		cityzip = gets.chomp.downcase

			if dial_book.include?(cityzip)
	
			40.times { print "-" }
	

			puts " "
		# prints to screen value of User input (cityzip) and matching value (zip code) 
		puts "The area code for #{cityzip} is #{get_area_code(dial_book, cityzip)}"
		40.times { print "-" }
		puts " "
		else
		puts "You have entered and invalid city..."
		40.times { print "_"}
		puts ""

		end
	end

		break if answer != "y"	
		
end
		puts ""
		puts "You entered \"N\", therefore have selected to exit" 
		puts ""

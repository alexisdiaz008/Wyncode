
class Person
	puts "What's your name?" #needs to be a while loop. Do this after class
	@@name=gets.chomp
	if @@name =~ /\d/
		puts "That's not a valid name"
	else
		puts @@name
	end

end


class Age


puts "What's your age?"

@@age = gets.chomp

	if @@age =~ /^([a-z ])+$/ #the ^ says to start at the beginning of the line and the +$ means to go to the end of the line
		puts "That's not a valid age" #needs to be a while loop
	else
		puts "Your name is #{@@name} and you are #{@@age}"
	end
end









##############   TERMINAL SOLDIERS #################

# for first_name 
# 	if first_name =~/\a-z/
# 		puts "Invalid"
# 		gets.chomp
# 	else
# 		puts "What's your age?"
# 	end
# end


# if first_name =~ /\d/
# 	invalid_name = "That is an invalid response"
# 	puts invalid_name
# else
# puts first_name
# end



# puts "What's your age?"
# age=gets.chomp
# puts "Your name is #{first_name} and you are #{age} years old"
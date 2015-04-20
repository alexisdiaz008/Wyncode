 
#ROCK PAPER SCISSORS
# I can set duck, punch or block to numerical things and have the computer generate random numbers. Then I can 
#count the number of times Lose is a keyword and you die. 

def blah
puts "Now you're fighting. Choose duck, kick, or punch. (Ducking beats punching, kicking beats ducking, punching beats kicking)"
fight = {:punch=> 1, :duck => 2, :kick => 3}

fight_input=gets.chomp.downcase



if fight_input=="punch"
	fight_input = 1
elsif fight_input=="kick"
	fight_input = 2
elsif fight_input=="duck"
	fight_input = 3
else
	puts "You didn't choose so he killed you. Slow motion is better than no motion"
end

computer_choice=1+rand(3)		


if computer_choice > fight_input
	puts "
	Ouch, that hurt"
elsif computer_choice < fight_input
	puts "
	You got him good"
else 
	puts "Come at him again!"
end
end
puts blah

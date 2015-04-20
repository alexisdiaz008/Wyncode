# require "./Voter_Sim_Modules.rb"
# include VoterSimModule

# class Person
# end

class Voter
  attr_accessor :name ,:party
  @@voters=[] #our array of strings

  def initialize(name, party)
    @name=name
    @party=party

  end

  def self.create_voter
      voter_string="Voter: "

      p "Name?"
      name=gets.chomp

      p "Politicis? Liberal,Conservative, Tea Party, Socialist, or Neutral"
      party=gets.chomp.downcase.capitalize

        unless party.include?( "Liberal"||"Conservative"||"Tea Party" ||"Socialist"||"Neutral") do
          p "Politicis? Liberal,Conservative, Tea Party, Socialist, or Neutral"
          party=gets.chomp.downcase.capitalize
            end
            @@voters.push(voter_string, name, party)
        end
  end
###################

  def self.list
      puts "* #{@@voters.join', '}' "
  end

  def self.update

    puts "Name?" #gets that name input
    name=gets.chomp #stores it
    # name="booboo"#TEST
    puts "New name?"
    new_name=gets.chomp
    # new_name="ASnd" #TEST
    puts "New Politics?"
    new_pol=gets.chomp.downcase.capitalize
    # new_pol="Republican" #TEST

  @@voters.each_cons(@@voters.size()) do |voter, name, politics| #This is where the magic happens, iterate through our array, ignoring the first string
   p "#{name} is a #{politics}" #TEST
    if name.include?(name) #if it has the name we first save
    # puts @@voters.index(politics)
      name.replace(new_name) #we replace it with whatevers here
      politics.replace(new_pol) #same here
      #
    else
      "sorry, name not found"
    end
  end
 end
end
##########################
class Politician
  attr_accessor :name ,:party
  @@politicians=[]

  def initialize(name, party)
    @name=name
    @party=party

  end

  def self.create_politician
      politician_string="Politician:"

      p "Name?"
      name=gets.chomp

      p "Party? Democrat or Republican"
      party=gets.chomp.downcase.capitalize

        unless party.include?("Republican"||"Democrat") do
          p "Party? Democrat or Republican"
          party=gets.chomp.downcase.capitalize
        end
      @@politicians.push(politician_string, name, party)
  end
end
###################

  def self.list
      puts "* #{@@politicians.join', '}' "
  end
  def self.update

    puts "Name?"
    name=gets.chomp
    # name="booboo"#TEST
    puts "New name?"
    new_name=gets.chomp
    # new_name="ASnd" #TEST
    puts "New Party?"
    new_pol=gets.chomp.downcase.capitalize
    # new_pol="Republican" #TEST

  @@voters.each_cons(@@voters.size()) do |voter, name, politics|
   p "#{name} is a #{politics}"
    if name.include?(name)
    # puts @@voters.index(politics)
      name.replace(new_name)
      politics.replace(new_pol)
      #
    else
      "sorry, name not found"
    end
  end
 end
end

###################
def main_menu
  p "What would you like to do? Create, List, Update, or Vote"
  menu_options=gets.chomp.downcase
end
####################

def create
  p "What would you like to create? Politician or Person?"
  create_options=gets.chomp.downcase

  case create_options
  when "politician"
    Politician.create_politician
  when "person"
    Voter.create_voter
  else create_options.nil?
    puts "Sorry, you have to pick SOMETHING"
  end
end

##########################

def update_choice #had to make this method to consolidate the two update methods and still use the class variable arrays in both of them

  puts "Politician or Person?"
  decision=gets.chomp.downcase.capitalize

  case decision
  when "Politician"
    Politician.update
  when "Person"
    Voter.update
  else
    "Not a valid choice"
    end
end
#
# def list
# end
#
# def update
# end
#
# def vote
#
# end
#
#main_menu

loop do
  case main_menu
  when "create"
    create
  when "list"
    Politician.list
    Voter.list
  when "update"
    update_choice
  when "vote"
    puts "in progress"
  else main_menu.nil?
    p "Sorry, you've got to input one of the commands"
    puts loop
  end
end

#  def test
#
#   p "what would you like to create? Politician or Person"
#   main_menu.create(politician)
#   main_menu.create.person(name, party)
#   politcian(name, party)
#
#   republicans={}
#
# end
#
# Politician.create_politician
# Politician.list
# Voter.list
# Voter.update
# Voter.list
# test

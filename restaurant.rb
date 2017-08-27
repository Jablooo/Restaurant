=begin
**BRIEF**
I own a restaurant, and even though I am rich I want to be richer.
My staff costs me $3 an hour, can you write a piece of software so I
can fire them.

Classes + Objects

**SUDO CODE**
I want the programme to take bookings for a certain number of people.
I want CUSTOMER to place order
I want WAITER to take order
I want COOK to make it


1. Create a class for the restaurant itself
  - How do we describe it
    - address
    - phone number
    - type of food
    - name
    - capacity
    - opening hours
  - What does it do
    - take bookings

2. Create a waiter class
  - How do we describe it
    - age
    - name
    - nationality
  - What does it do
    - seats people
    - takes order
    - cooks food
    - clears table
    - gets bill

3. Create a customer class
  - How do we describe it
    - name
    - number of people
    - time
    -order
  - What does it do
    - books table
    - orders food
    - pays bill
4. Create class for food or menu.
=end

class Restaurant
# - How do we describe it
  def initialize(name, address, phoneNumber, openingHour, capacity)
    @name = name
    @address = address
    @phoneNumber = phoneNumber
    @openingHour = openingHour
    @capacity = capacity
  end

  attr_accessor :capacity, :openingHour, :name, :address

# - What does it do
  def take_booking
    puts "How many people will be in your party?"
    answerBooking = gets.chomp.to_i

    if @capacity >= answerBooking
      true
      @capacity = @capacity - answerBooking
      # Test to see if capacity counter is working # puts "we have #{@capacity} left"
    else
      false
      puts "We cannot fit that many people at this point in time."
      puts "The maximum number of dinners is #{@capacity}"
    end
    # what time
  end

  def take_order(answerOption)
    puts "    Welcome to Jominoes online ordering"
    puts "         What would you like today"
    puts
    puts "[1] Pastas"
  end

end

# menu
class Pasta
# - How do we describe it
  def initialize(nameP, ingredient, df, price)
    @nameP = nameP
    @ingredient = ingredient
    @df = df
    @price = price
  end

  attr_accessor :nameP, :ingredient, :df, :price

# - What does it do
  def show_pasta
    @nameP.each do |pastaType|
      puts "- #{pastaType}"
    end
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

end

spagBol = Pasta.new("Spaghetti Bolognese", ["tomato", "beef", "parmesan"], "No", 10)
carbonara = Pasta.new("Spaghetti Carbonara", ["cream", "egg", "bacon", "parmesan"], "No", 12)
napolitana = Pasta.new("Ravioli Napolitana", ["tomato", "parmesan"], "No", 8)
pesto = Pasta.new("Penne Pesto", ["pesto", "brocolli"], "Yes", 7)

jominoes = Restaurant.new("Jominoes", "44 Fourth Street", 95331027, "12:00 to 19:00", 20)
#
# class Waiter
#   #   - How do we describe it
#   def initialize(nameW, age, nationality)
#     @name = nameW
#     @age = age
#     @nationality = nationality
#   end
# #   - What does it do
#   def seatPeople
#
#   end
#
#   def takeOrder
#
#   end
#
# attr_accessor :nameW, :age, :nationality
# end




# answerOption = 0
# until answerOption == 4
  puts "You've reach Jominoes. How can I help you?"
  puts "[1] Make booking      [2] Check opening hours"
  puts "[3] Place order       [4] Hang up "
  answerOption = gets.chomp.to_i
  if answerOption == 1
    puts "lets make a booking"
    jominoes.take_booking
  elsif answerOption == 2
    puts "Our restaurant is open from #{jominoes.openingHour} everyday."
  elsif answerOption == 3
    jominoes.take_order(answerOption)
    answerOrder = gets.chomp.to_i

    if answerOrder == 1
      puts "Here are your options"
      puts "[1] #{spagBol.nameP}"
      puts "[2] #{carbonara.nameP}"
      puts "[3] #{napolitana.nameP}"
      puts "[4] #{pesto.nameP}"
    else
    end

  elsif answerOption == 4
    abort
  else
    puts "That is not an option"
  end
# end
# puts "Have a nice day"

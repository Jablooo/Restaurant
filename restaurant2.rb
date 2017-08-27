class Pasta
# - How do we describe it
  def initialize(name, ingredients, price)
    @name = name
    @ingredients = ingredients
    @price = price
  end

  attr_accessor :name, :ingredients, :price
# - What does it do
  def show_pasta_ingredients
    @name.each do |pastaType|
      puts "- #{pastaType.ingredients}"
    end
  end

end

spagBol = Pasta.new("Spaghetti Bolognese", ["tomato", "beef", "parmesan"], 10)
carbonara = Pasta.new("Spaghetti Carbonara", ["cream", "egg", "bacon", "parmesan"], 12)
napolitana = Pasta.new("Ravioli Napolitana", ["tomato", "parmesan"], 8)
pesto = Pasta.new("Penne Pesto", ["pesto", "brocolli"], 7)

class Pizza
# - How do we describe it
  def initialize(name, ingredients, price)
    @name = name
    @ingredients = ingredients
    @price = price
  end

  attr_accessor :name, :ingredients, :price
# - What does it do
  def show_pizza_ingredients
    @name.each do |pizzaType|
      puts "- #{pizzaType.ingredients}"
    end
  end

end

fourCheese = Pizza.new("Four Cheeses", ["tomato", "gorgonzola", "mozzarella", "cheddar", "goats cheese"], 12)
margarita = Pizza.new("Margarita", ["tomato", "mozzarella"], 8)
diavola = Pizza.new("Diavola", ["salami", "chilli"], 7)

class Menu
# - How do we describe it
  def initialize(name, items)
    @name = name
    @items = items
  end

  def show_items
  @items.each do |x|
    puts "#{x.name}- #{x.ingredients}............$#{x.price}"
    end
  end
attr_accessor :name, :item
end

pastaMenu = Menu.new("Pastas", [spagBol, carbonara, napolitana, pesto])
pizzaMenu = Menu.new("Pizzas", [fourCheese, margarita, diavola])

class Order
  def initialize(items)
    @items = items
  end

  def order_push
    newOrder = [

    ]
    while runner = 2

      puts "What would you like to order?"
      gap
      puts "          [1] Pasta"
      puts "          [2] Pizza"
      puts "          [3] Check Order"
      puts "          [4] Place Order"
      gap
      answerOrder = gets.chomp.to_i

      if answerOrder == 1
        puts "[1] Spaghetti Bolognese"
        puts "[2] Spaghetti Carbonara"
        puts "[3] Ravioli Napolitana"
        puts "[4] Penne Pesto"
        puts "[5] Back to order menu"
        selection = gets.chomp.to_i
        if selection == 1
          newOrder.push("Spaghetti Bolognese")
          puts "Spaghetti Bolognese has been added to your order"
          gap
          runner = 2
        elsif selection == 2
          newOrder.push("Spaghetti Carbonara")
          puts "Spaghetti Carbonara has been added to your order"
          gap
          runner = 2
        elsif selection == 3
          newOrder.push("Ravioli Napolitana")
          puts "Ravioli Napolitana has been added to your order"
          gap
          runner = 2
        elsif selection == 4
          newOrder.push("Penne Pesto")
          puts "Penne Pesto has been added to your order"
          gap
          runner = 2
        elsif selection == 5
          runner = 3
        else
          valid_option(gap)
          runner = 1
        end
      elsif answerOrder == 2
        puts "[1] Four Cheeses"
        puts "[2] Margarita"
        puts "[3] Diavola"
        puts "[4] Back to order menu"
        selection = gets.chomp.to_i
        if selection == 1
          newOrder.push("Four Cheeses")
          puts "Four Cheeses has been added to your order"
          gap
          runner = 2
        elsif selection == 2
          newOrder.push("Margarita")
          puts "Margarita has been added to your order"
          gap
          runner = 2
        elsif selection == 3
          newOrder.push("Diavola")
          puts "Diavola has been added to your order"
          gap
          runner = 2
        elsif selection == 4
          runner = 3
        else
          valid_option(gap)
          runner = 1
        end
      elsif answerOrder == 3
        puts newOrder
        runner = 1
      elsif answerOrder == 4
        puts "Your order has been placed"
        sleep(2)
        abort
      else
        valid_option(gap)
      end
    end
  end

  def total_cost
    cost = 0
    @items.each do |order|
      cost = cost + items.price
    end
  end
attr_accessor :items
end

def gap
puts
puts
end

def valid_option(gap)
  gap
  puts "please select valid option"
end

runner = 0
while runner == 0
  gap
  puts "    Welcome to Jominoes online ordering"
  puts "         What would you like today"
  gap
  puts "                [1] Pastas"
  puts "                [2] Pizzas"
  puts "                [3] Order"
  puts "                [4] Exit"

  gap
  menuAnswer = gets.chomp.to_i

  if menuAnswer == 1
    gap
    puts "                  Pastas"
    pastaMenu.show_items
    gap
    puts "    press return to go back to main menu"
    gets.chomp
    runner = 0
  elsif menuAnswer == 2
    gap
    puts "                  Pizzas"
    pizzaMenu.show_items
    gap
    puts "    press return to go back to main menu"
    gets.chomp
    runner = 0
  elsif menuAnswer == 3
    newOrder = Order.new([])
    newOrder.order_push
    runner = 1
  elsif menuAnswer == 4
    abort
  else
    valid_option(gap)
    gap
  end
end

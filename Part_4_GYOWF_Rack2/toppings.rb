# toppings.

class Toppings
  attr_reader :toppings_list
  def initialize
    @toppings_list = [
      "Mozzarella", "Pepperoni", "Bacon", "Basil", "Garlic", "Oregano", "Onion", "Sausage", 
      "Tomato", "Olive oil", "Red onion", "Mushroom"
    ]
  end

  def generate
    toppings_list.sample
  end
end

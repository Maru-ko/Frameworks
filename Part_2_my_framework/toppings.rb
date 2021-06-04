# advice.rb
# This class is solely used for content generation, not a separate web application
class Toppings
  def initialize
    @toppings_list = [
      "Mozzarella", "Pepperoni", "Bacon", "Basil", "Garlic", "Oregano", "Onion", "Sausage", 
      "Tomato", "Olive oil", "Red onion", "Mushroom"
    ]
  end

  def generate
    @toppings_list.sample
  end
end




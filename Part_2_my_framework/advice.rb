# advice.rb

class Advice
  def initialize
    @advice_list = [
      "Mozzarella", "Pepperoni", "Bacon", "Basil", "Garlic", "Oregano", "Onion", "Sausage", 
      "Tomato", "Olive oil", "Red onion", "Mushroom"
    ]
  end

  def gemerate
    @advice_list.sample
  end
end


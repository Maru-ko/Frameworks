# Eatpizza.rb

require_relative 'toppings'

class EatPizza
  def call(env)
    case env['REQUEST_PATH']
    when '/'
      ['200', 
      {"Content-Type"=>"text/html"}, 
      ["<html><body><h2>Let's Eat <p>PLAIN PIZZA!!!</p></h2></body></html>"]
    ]
    when '/toppings'
      topping = Toppings.new.generate
      ['200', {"Content-Type"=>"text/html"}, ["<html><body><b><em>Let's Eat PIZZA</b></em></body></html>", "<html><body><p>with</p></body></html>", "<html><body><p><b><em>#{topping}</em></b></p></body></html>"]]
    else
      [
        '404',
        {"Content-Type"=>'text/html', 
         "Content-Length"=>'48'},
        ["<html><body><h4>404 Not Found</h4></body></html>"]
      ]
    end
  end
end
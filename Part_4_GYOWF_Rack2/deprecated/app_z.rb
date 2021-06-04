# eatpizza.rb
# updated erb method

require_relative "toppings"

class EatPizza
  def call(env)

    output_header_values(env)

    case env['REQUEST_PATH']
    when '/'
      ['200', {"Content-Type"=>"text/html"}, [erb(:index)]]
    when '/toppings'
      topping = Toppings.new.generate
      [
        '200', 
        {"Content-Type"=>"text/html"}, 
        [erb(:toppings, topping: piece_of_advice)]
      ]
    else
      [
        '404',
        {"Content-Type"=>'text/html', 
         "Content-Length"=>'48'},
        [erb(:not_found)]
      ]
    end
  end

  def erb(filename, local = {})
    b = binding
    message = local[:message]
    content = File.read("views/#{filename}.erb")
    ERB.new(content).result(b)
  end

  def output_header_values(eng)
    env.each { |k, v| puts "#{k}: #{v}"}
  end
end
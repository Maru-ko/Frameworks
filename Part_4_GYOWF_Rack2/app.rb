# eatpizza.rb
# more natural syntax for delivering a resonse form our `call` method.
require_relative "condimenti"
require_relative "toppings"

class App < Condimenti
  def call(env)

    output_header_values(env)

    case env['REQUEST_PATH']
    when '/'
      status = '200'
      headers = {"Content-Type" => 'text/html'}
      response(status, headers) { erb :index }
    when '/toppings'
      topping = Toppings.new.generate
      status = '200'
      headers = {"Content-Type" => 'text/html'}
      response(status, headers) { erb :toppings, topping: topping }
    else
      status = '404'
      headers = {"Content-Type"=> 'text/html', "Content-Length"=>'58'}
      response(status, headers) { erb :not_found}
    end
  end
end
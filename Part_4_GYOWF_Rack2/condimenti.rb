# condimenti.rb in place of monroe.rb

class Condimenti
  def erb(filename, local = {})
    b = binding
    topping = local[:topping] #might have to rename variable it to 'topping'
    content = File.read("views/#{filename}.erb")
    ERB.new(content).result(b)
  end

  def response(status, headers, body = '')
    body = yield if block_given?
    [status, headers, [body]]
  end

  def output_header_values(env)
    env.each { |k, v| puts "#{k}: #{v}"}
  end
end
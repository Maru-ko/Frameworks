# hello_world.rb

class HelloWorld
  def call(env)
    env.each { |k, v| puts "#{k}: #{v}" }
    ["200", {'Content-Type'=>'text/plain'}, ['Hello World!', "let's get some pizza!"]]
  end
end
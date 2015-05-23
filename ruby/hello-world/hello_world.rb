class HelloWorld
  def self.hello(name =nil)
    return "Hello, world!" unless name
    "Hello, #{name}!"
  end
end

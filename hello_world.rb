# Test

class HelloWorldTest < Minitest::Test
  def test_say_hi
    # skip
    assert_equal "Hello, World!", HelloWorld.hello
  end
end


# Solution
module HelloWorld
  def self.hello
    "Hello, World!"
  end
end

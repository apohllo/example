require File.join(File.dirname(__FILE__),"..","lib","example")
require 'test/unit'

class ExampleTest < Test::Unit::TestCase
  
  MESSAGE_RE = /Hello world/

  def setup
    @hello_world = HelloWorld.new
  end

  def test_message_not_empty
    assert_not_nil @hello_world.message
  end

  def test_message_contents
    assert @hello_world.message =~ MESSAGE_RE
  end

  def test_say_hello_without_param
    assert_nothing_raised do
      @hello_world.say_hello
    end
  end

  def test_say_hello_with_param
    assert_nothing_raised do
      s = ""
      @hello_world.say_hello(s)
      assert s =~ MESSAGE_RE 
    end
  end
end

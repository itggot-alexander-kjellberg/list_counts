require_relative 'spec_helper'

FUNCTION = 'max'
ARITY = 1
PATH = File.join("lib",FUNCTION+".rb")
RELATIVE_PATH = File.join("..", PATH)

describe FUNCTION do
  
  def self.test_order
    :alpha
  end
  
  it 'exists' do
    assert File.exist?(PATH), "Du behöver skapa filen #{PATH}"
    require_relative RELATIVE_PATH
  end
  
  it "has a function named #{FUNCTION}" do
    assert (method_exists? FUNCTION.to_sym), "Du behöver definera funktionen #{FUNCTION} i lib/#{FUNCTION}.rb"
  end
  
  it "takes #{ARITY.humanize} argument#{ARITY > 1 ? "s" : ""}" do
    message = "Funktionen #{FUNCTION} måste ta #{ARITY} argument"
    assert_equal ARITY, method(FUNCTION.to_sym).arity, message
  end
  it 'returns 7 if numbers is [3,5,7]' do
    max( [3,5,7]).must_equal 7
  end

  it 'returns 9 if numbers is [9,3,5,6]' do
    max( [9,3,5,6]).must_equal 9
  end

  it 'returns 5 if numbers is [5,3]' do
    max( [5, 3]).must_equal 5
  end

  it 'returns 3 if numbers is [3]' do
    max( [3]).must_equal 3
  end

  it 'returns nil if numbers is empty' do
    max( []).must_be_nil
  end

end
require_relative 'spec_helper'

FUNCTION = 'average'
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
  
  it 'returns 5 if numbers is [3,5,7]' do
    average([3,5,7]).must_equal 5
  end
  
  it 'returns 5.25 if numbers is [3,7,5,6]' do
    average([3,7,5,6]).must_equal 5.25
  end
  
  it  'returns 4 if numbers is [3,5]' do
    average([3,5]).must_equal 4
  end
  
  it 'returns 3 if numbers is [3]' do
    average([3]).must_equal 3
  end
  
  it 'returns 3.3333333333333335 if numbers is [3,3,4]' do
    average([3,3,4]).must_equal 3.3333333333333335
  end
  
  it 'returns nil if numbers is empty' do
    average([]).must_equal nil
  end
  
  # it 'uses the sum function' do
  #   self.expects(:sum).with([3,5,2]).returns(10)
  #   average([3,5,2])
  # end
  
end
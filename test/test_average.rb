require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'

require_relative '../lib/list_counts'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]


describe 'average' do

  it 'takes a list of numbers as argument' do
    proc{ average() }.must_raise ArgumentError
  end

  it 'returns 5 if numbers is [3,5,7]' do
   average(numbers: [3,5,7]).must_equal 5
  end

  it 'returns 5.25 if numbers is [3,7,5,6]' do
   average(numbers: [3,7,5,6]).must_equal 5.25
  end

  it  'returns 4 if numbers is [3,5]' do
    average(numbers: [3,5]).must_equal 4
  end

  it 'returns 3 if numbers is [3]' do
    average(numbers: [3]).must_equal 3
  end

  it 'returns 3.3333333333333335 if numbers is [3,3,4]' do
    average(numbers: [3,3,4]).must_equal 3.3333333333333335
  end

  it 'returns nil if numbers is empty' do
    average(numbers: []).must_equal nil
  end

  it 'uses the sum function' do
    self.expects(:sum).with({numbers: [3,5,2]}).returns(10)
    average(numbers: [3,5,2])
  end

end
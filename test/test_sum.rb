require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'
require_relative '../lib/list_counts'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'sum' do

  it 'takes a list as argument' do
    proc { sum() }.must_raise ArgumentError
  end

  it 'returns 4 if numbers is [4]' do
    sum(numbers:[4]).must_equal 4
  end

  it 'should return nil if numbers is empty' do
    sum(numbers:[]).must_be_nil
  end

  it 'returns 6 if numbers is [1,2,3]' do
    sum(numbers:[1,2,3]).must_equal 6
  end

end
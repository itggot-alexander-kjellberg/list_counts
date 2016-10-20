require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'
require_relative '../lib/list_counts'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'min' do

  it 'takes a list of numbers as argument' do
    proc { min() }.must_raise ArgumentError
  end

  it 'returns 3 if numbers is [3,5,7]' do
    min(numbers:[3,5,7]).must_equal 3
  end

  it 'returns 2 if numbers is [9,3,5,2]' do
    min(numbers:[9,3,5,2]).must_equal 2
  end

  it 'returns 3 if numbers is [3,5]' do
    min(numbers:[3,5]).must_equal 3
  end

  it 'returns 3 if numbers is [3]' do
    min(numbers:[3]).must_equal 3
  end

  it 'returns nil if list numbers is empty' do
    min(numbers: []).must_be_nil
  end

end
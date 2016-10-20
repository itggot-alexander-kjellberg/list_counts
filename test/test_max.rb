require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'
require_relative '../lib/list_counts'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]


describe 'max' do

  it 'takes a list of numbers as argument' do
    proc { max() }.must_raise ArgumentError
  end

  it 'returns 7 if numbers is [3,5,7]' do
    max(numbers: [3,5,7]).must_equal 7
  end

  it 'returns 9 if numbers is [9,3,5,6]' do
    max(numbers: [9,3,5,6]).must_equal 9
  end

  it 'returns 5 if numbers is [5,3]' do
    max(numbers: [5, 3]).must_equal 5
  end

  it 'returns 3 if numbers is [3]' do
    max(numbers: [3]).must_equal 3
  end

  it 'returns nil if numbers is empty' do
    max(numbers: []).must_be_nil
  end

end
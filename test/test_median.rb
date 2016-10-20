require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'mocha/mini_test'
require_relative '../lib/list_counts'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

describe 'median' do

  it 'takes a list as argument' do
    proc { median() }.must_raise ArgumentError

  end

  it 'returns 5 if numbers is [3,5,7]' do
    median(numbers: [3,5,7]).must_equal 5
  end

  it 'returns 5.5 if numbers is [3,7,5,6]' do
    median(numbers: [3,7,5,6]).must_equal 5.5
  end

  it 'returns 4 if numbers is [3,5]' do
    median(numbers: [3,5]).must_equal 4
  end

  it 'returns 3 if numbers is [3]' do
    median(numbers: [3]).must_equal 3
  end

  it 'returns nil if numbers is empty' do
    median(numbers: []).must_be_nil
  end


end
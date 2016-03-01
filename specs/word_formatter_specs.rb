require('minitest/autorun')
require('minitest/rg')

require_relative('../models/word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @word_formatter = WordFormatter.new('e13 zqf')
    @camelcase = WordFormatter.new('code clan')
  end

  def test_postcode_upcase
    assert_equal('E13 ZQF', @word_formatter.postcode_upcase)
  end

  def test_camel_case
    assert_equal('CodeClan', @camelcase.camel_case)
  end
end




# Create a method to camelcase strings e.g. 'code clan' should become "CodeClan"

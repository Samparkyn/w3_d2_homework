class WordFormatter

  def initialize(string)
   @string = string
  end

  def postcode_upcase()
    @string.upcase
  end

  def camel_case
    @string.split.collect(&:capitalize).join
  end

end
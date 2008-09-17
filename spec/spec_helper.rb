require 'rubygems'
require 'treetop'

module ParserSpecHelper
  def parse(input)
    result = @parser.parse(input)
    unless result
      puts @parser.terminal_failures.join("\n")
    end
    result.should_not be_nil
    result
  end
end

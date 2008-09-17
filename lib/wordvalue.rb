Treetop.load File.expand_path("#{File.dirname(__FILE__)}/wordvalue")

class WordValueParser < Treetop::Runtime::CompiledParser
  include WordValueGrammar
end
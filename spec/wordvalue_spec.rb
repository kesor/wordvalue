require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/wordvalue'

describe WordValueParser do
  include ParserSpecHelper

  before(:all) do
    @parser = WordValueParser.new
  end

  it "should read digits" do
    parse('0').value.should == 0
    parse('123').value.should == 123
  end
  
  it "should read digits separated by commas" do
    parse('1,000').value.should == 1000
    parse('5,223,456').value.should == 5223456
  end
  
  it "should read words from one to twenty" do
    parse('one').value.should == 1
    parse('two').value.should == 2
    parse('three').value.should == 3
    parse('four').value.should == 4
    parse('five').value.should == 5
    parse('six').value.should == 6
    parse('seven').value.should == 7
    parse('eight').value.should == 8
    parse('nine').value.should == 9
    parse('ten').value.should == 10
    parse('eleven').value.should == 11
    parse('twelve').value.should == 12
    parse('thirteen').value.should == 13
    parse('fourteen').value.should == 14
    parse('fifteen').value.should == 15
    parse('sixteen').value.should == 16
    parse('seventeen').value.should == 17
    parse('eighteen').value.should == 18
    parse('nineteen').value.should == 19
    parse('twenty').value.should == 20
  end
  
end

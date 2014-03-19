require 'spec_helper'

class Foo
  include Selfer

  def initialize(x)
    @x = x
  end

  def stringify
    @x.to_s
  end
end

describe Selfer do
 it 'instanciates an object and calls the appropriate method' do
   Foo.stringify(1).should == "1"
 end
end

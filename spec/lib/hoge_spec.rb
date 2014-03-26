$LOAD_PATH.push('.')
require 'lib/hoge'

describe Hoge do
  before do
     @hoge = []
  end
 
  it "should be empty" do
    @hoge.should be_empty
  end
  it "should size 0" do
    @hoge.size.should == 0
  end

  after do
    @hoge = nil
  end
end

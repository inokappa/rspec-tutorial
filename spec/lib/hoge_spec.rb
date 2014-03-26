$LOAD_PATH.push('.')
require 'lib/hoge'

describe Ahoaho do
  before do
     @name = []
  end
 
  it "should be empty" do
    @name.should be_empty
  end

  it "should size 0" do
    @name.size.should == 0
  end

  it 'a.huga は Hello Rspec と表示される' do
    a = Ahoaho.new("Hello Rspec")
    a.huga == "Hello Rspec"
  end 

  after do
    @hoge = nil
  end
end

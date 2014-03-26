$LOAD_PATH.push('.')
require 'lib/hoge'

describe Ahoaho ,"のテスト" do
  context '' 
  it "huga は空ではない" do
    expect('abc').not_to be_empty
  end
  it "huga に Hello が含まれる" do
    expect('Hello').to match(/Hello/)
  end
end

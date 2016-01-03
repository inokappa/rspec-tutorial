require_relative 'zura'

describe Zura, "のテスト" do

  before do
    @watashi = Zura.new()
  end

  context '#hage の引数が "私はズラ" の場合' do
    before do
      @arg = "私はズラ"
    end
    it '"私はズラ" が返ってくる' do
      expect(@watashi.hage(@arg)).to eq '私はズラ'
    end
  end

  context '#hage の引数が指定されていない場合' do
    it '引数エラーとなる' do
      expect{@watashi.hage}.to raise_error(ArgumentError)
    end
  end

end

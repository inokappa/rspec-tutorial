require 'hoge'

describe Client do

  describe '#initialize' do
    context '引数 uri が設定されている場合' do
      before do
        @uri = 'unix:///var/lib/lxd/unix.socket'
      end
      it '引数は文字列である' do
        expect(@uri).to be_a_kind_of(String)
      end
    end
    context '引数 uri が設定されていない場合' do
      it '引数エラーとなる' do
        expect{Client.new}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#client' do
    context '引数 uri が設定されている場合' do
      before do
        @uri = 'unix:///var/lib/lxd/unix.socket'
      end
      it 'object が生成される' do
        c = Client.new(@uri)
        expect(c.client).to be_a_kind_of(Object)
      end
    end

    context '引数 uri が設定されていない場合' do
      before do
        @uri = ''
      end
      it 'object が生成される' do
        c = Client.new(@uri)
        expect(c.client).to be_a_kind_of(Object)
      end
    end

  end

  describe '#list_containers' do

    context '引数 uri が正しく設定されている場合' do
      before do
        @uri = 'unix:///var/lib/lxd/unix.socket'
      end
      it 'コンテナ一覧が取得出来る' do
        c = Client.new(@uri)
        expect(c.list_containers).to be_a_kind_of(String)
      end
    end

    context '引数 uri が設定されていない場合' do
      before do
        @uri = ''
      end
      it 'URI エラーとなる' do
        c = Client.new(@uri)
        expect{c.list_containers}.to raise_error(URI::InvalidURIError)
      end
    end

  end
end

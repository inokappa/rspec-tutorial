class Hoge
  def initialize(hoge)
    @hoge = ""
  end
  def hello_hoge 
    puts (@hoge)
  end
end

hoge = Hoge.new("Hello Travis")
hoge.hello_hoge

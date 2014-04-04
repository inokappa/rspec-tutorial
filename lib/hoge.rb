class MessageFilter
  def initialize(str)
    @str = str
  end
  def detect?(text)
    text.include?(@str)
  end
end

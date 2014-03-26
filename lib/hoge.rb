#!/usr/bin/env ruby

class Ahoaho
  def initialize(hoge)
    @name = hoge
  end
  def huga
    puts (@name)
  end
end

a = Ahoaho.new("Hello Rspec")
a.huga

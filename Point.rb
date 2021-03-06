#!/usr/bin/env ruby
class Point
  attr_accessor :x
  attr_accessor :y

  def initialize(x_p=0,y_p=0)
    @x = x_p
    @y = y_p
  end

  def to_s
    "[#{x},#{y}]"
  end

  def distPoints(p)
  	Math.sqrt(((p.x-x)*(p.x-x))+((p.y-y)*(p.y-y)))
  end

  def to_hash
  {
    x: x,
    y: y
  }
  end

  def equals(p)
    if self.distPoints(p) < 7
  		true
  	else
  		false
  	end
  end

  def self.from_json string
    puts 'tP'
    data = JSON.load string
    self.new data['x'], data['y']
  end
end
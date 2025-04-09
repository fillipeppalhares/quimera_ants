# frozen_string_literal: true

class Map::Coordinate
  attr_accessor :q, :r, :s
  private       :q=, :r=, :s=

  def initialize(q, r, s)
    raise ArgumentError, "invalid axial components" if (q + r + s) != 0

    self.q, self.r, self.s = q, r, s
  end

  def to_a
    [q, r, s]
  end

  def to_h
    { q:, r:, s: }
  end

  def ==(other)
    other.is_a?(self.class) && to_a == other.to_a
  end

  alias eql? ==

  def hash
    to_a.hash
  end

  def inspect
    "#<Coordinate q: #{q}\tr: #{r}\ts: #{s}>"
  end
end

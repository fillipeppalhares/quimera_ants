# frozen_string_literal: true

class Map::Grid::Hex
  def self.coordinates(radius:)
    coords = []

    (-radius..radius).each do |q|
      (-radius..radius).each do |r|
        s = -(q + r)

        next unless (q.abs + r.abs + s.abs) <= radius

        coords << [q, r, s]
      end
    end

    coords
  end
end

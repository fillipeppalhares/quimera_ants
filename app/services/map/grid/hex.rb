# frozen_string_literal: true

class Map::Grid::Hex
  def self.positions(radius:, center_q: 0, center_r: 0, center_s: 0)
    coordinates = []

    (-radius..radius).each do |delta_q|
      (-radius..radius).each do |delta_r|
        delta_s = -(delta_q + delta_r)

        next unless (delta_q.abs + delta_r.abs + delta_s.abs) <= radius

        q = delta_q + center_q
        r = delta_r + center_r
        s = delta_s + center_s

        coordinates << Map::Coordinate.new(q, r, s)
      end
    end

    coordinates
  end
end

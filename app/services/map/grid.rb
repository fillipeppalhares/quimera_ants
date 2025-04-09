# frozen_string_literal: true

class Map::Grid
  attr_accessor :tiles
  private       :tiles=

  def initialize(radius:, center_q: 0, center_r: 0, center_s: 0, type: :hex)
    self.tiles = tile_positions(radius:, center_q:, center_r:, center_s:, type:)
  end

  def each_tile(&block)
    tiles.each(&block)
  end

  def each_coordinate(&block)
    tiles.each_key(&block)
  end

  def add_to_tile(coordinate)
    return unless block_given?

    self.tiles[coordinate] = self.tiles[coordinate].deep_merge(yield || {})
  end

  def add_to_each_tile
    return unless block_given?

    each_coordinate do |coordinate|
      add_to_tile(coordinate) { yield(coordinate) }
    end
  end

  def to_h
    tiles.transform_keys(&:to_a)
  end

  private

  def tile_positions(radius:, center_q:, center_r:, center_s:, type:)
    positions = grid(type).positions(radius:, center_q:, center_r:, center_s:)

    positions.each_with_object({}) do |coordinate, hash|
      hash[coordinate] = {}
    end
  end

  def grid(type)
    klass = "Map::Grid::#{type.to_s.classify}"
    klass.safe_constantize || raise(ArgumentError, "Unknown grid type: #{type}")
  end

  class << self
    def restore(hash)
      grid = allocate
      grid.send(:tiles=, {})

      hash.each do |key, value|
        coordinate = Map::Coordinate.new(*key)

        grid.tiles[coordinate] = value.deep_symbolize_keys
      end

      grid
    end
  end
end

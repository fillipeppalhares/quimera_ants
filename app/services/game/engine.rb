# frozen_string_literal: true

class Game::Engine
  attr_accessor :game
  private       :game=

  def initialize(game:)
    self.game = game
  end

  # def build_map(environment:)
  #   env = Environment.create(game:, type: environment)
  #   map = Map::Grid::Hex.coordinates(radius: 4)

  #   map.each do |coords|
  #     q = coords[0]
  #     r = coords[1]
  #     s = coords[2]

  #     env.allowed_regions.sample.create(game:, environment: env, q:, r:, s:)
  #   end
  # end
end

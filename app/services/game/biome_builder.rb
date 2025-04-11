# frozen_string_literal: true

class Game::BiomeBuilder
  class << self
    def build(game:, biome_options: {})
      game  = Resolver::Game.call(game)
      biome = game.biomes.build(**biome_options)
      grid  = Map::Grid.restore(biome.parsed_terrain_mapping)

      grid.each_tile do |coordinate, data|
        terrain = data[:terrain]
        type    = "Card::Terrain::#{terrain.classify}"

        biome.terrains.build(game:, type:, **coordinate.to_h)
      end

      biome

      # game
    end
  end
end

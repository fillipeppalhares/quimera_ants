# frozen_string_literal: true

class BiomeType < EnumerateIt::Base
  associate_values(
    prairie: 1,
  )

  def self.main_terrain_for(value)
    main_terrain[key_for(value)]
  end

  def self.terrains_for(value)
    allowed_terrains[key_for(value)]
  end

  def self.main_terrain
    {
      prairie: :grass_field
    }
  end

  def self.allowed_terrains
    {
      prairie: %i[meadow grass_field shrub water_stream scattered_tree rocky_outcrop flower_field wet_meadow marshy_field pond prairie_swale prairie_sinkhole burn_area]
    }
  end
end

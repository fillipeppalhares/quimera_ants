# frozen_string_literal: true

class BiomeType < EnumerateIt::Base
  associate_values(
    prairie: 1,
  )

  def self.terrains_for(value)
    allowed_terrains[key_for(value)]
  end

  def self.allowed_terrains
    {
      prairie: %i[Meadow GrassField Shrubs WaterStream ScatteredTree RockyOutcrop FlowerField WetMeadow MarshyField Pond PrairieSwale PrairieSinkhole BurnArea]
    }
  end
end

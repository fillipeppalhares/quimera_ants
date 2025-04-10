class Card::Biome < Card
  attribute :age, default: 0
  attribute :center_q, default: 0
  attribute :center_r, default: 0
  attribute :center_s, default: 0

  MAIN_TERRAIN_CHANCE = 0.6

  belongs_to :game
  has_many :terrains

  has_enumeration_for :biome_type, create_helpers: { prefix: true }
  has_enumeration_for :zone, create_helpers: { prefix: true }
  has_enumeration_for :temperature, create_helpers: { prefix: true }

  after_initialize :check_terrain_mapping, if: -> { new_record? }

  def parsed_terrain_mapping
    terrain_mapping.transform_keys { |key| JSON.parse(key) }
  end

  def main_terrain
    BiomeType.main_terrain_for(biome_type)
  end

  def allowed_terrains
    BiomeType.terrains_for(biome_type)
  end

  private

  def check_terrain_mapping
    return if terrain_mapping.present?

    self.terrain_mapping = generate_terrain_mapping
  end

  def generate_terrain_mapping
    grid = Map::Grid.new(radius:, center_q:, center_r:, center_s:)

    grid.add_to_each_tile do |coordinate|
      terrain = if rand < MAIN_TERRAIN_CHANCE
                  main_terrain
                else
                  (allowed_terrains - [main_terrain]).sample
                end

      { terrain: }
    end

    self.terrain_mapping = grid.to_h
  end
end

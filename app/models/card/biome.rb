class Card::Biome < Card
  attribute :age, default: 0
  attribute :center_q, default: 0
  attribute :center_r, default: 0
  attribute :center_s, default: 0

  belongs_to :game
  has_many :terrains

  has_enumeration_for :biome, with: BiomeType, create_helpers: { prefix: true }
  has_enumeration_for :zone, create_helpers: { prefix: true }
  has_enumeration_for :temperature, create_helpers: { prefix: true }
end

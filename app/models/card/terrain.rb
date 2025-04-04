class Card::Terrain < Card
  belongs_to :game
  belongs_to :biome
  has_many :sources
end

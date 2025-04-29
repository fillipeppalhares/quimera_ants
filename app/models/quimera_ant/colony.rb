class QuimeraAnt::Colony < ApplicationRecord
  belongs_to :terrain, class_name: "Card::Terrain"

  has_many :colony_genes
  has_many :genes, through: :colony_genes
end

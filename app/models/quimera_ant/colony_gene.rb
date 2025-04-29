class QuimeraAnt::ColonyGene < ApplicationRecord
  belongs_to :gene
  belongs_to :colony
end

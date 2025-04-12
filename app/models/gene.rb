class Gene < ApplicationRecord
  has_enumeration_for :phenotype, create_helpers: { prefix: true }
  has_enumeration_for :dominance, create_helpers: { prefix: true }
end

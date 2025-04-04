class Card < ApplicationRecord
  self.abstract_class = true

  def self.table_name_prefix
    "card_"
  end
end

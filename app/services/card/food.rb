# frozen_string_literal: true

class Card::Food
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name

  FOOD_ATTRIBUTES.each { |name| attribute name }

  def initialize(food)
    data = FOODS[food]

    return unless data

    super(data.merge(name: food))
  end
end

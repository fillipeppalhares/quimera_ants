# frozen_string_literal: true

class Game::Log < ApplicationRecord
  belongs_to :game
end

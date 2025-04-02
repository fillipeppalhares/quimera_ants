# frozen_string_literal: true

class Game::Snapshot < ApplicationRecord
  belongs_to :game
end

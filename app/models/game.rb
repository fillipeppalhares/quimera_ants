# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :logs, class_name: "Game::Log", dependent: :destroy
  has_many :snapshots, class_name: "Game::Snapshot", dependent: :destroy
end

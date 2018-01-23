class Anime < ApplicationRecord
  has_many :personnages
  has_many :episodes
end

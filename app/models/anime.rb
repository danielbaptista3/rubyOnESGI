class Anime < ApplicationRecord
  has_many :personnages
  has_many :episodes
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :tags
  belongs_to :auteur
  belongs_to :producteur
  belongs_to :studio
end

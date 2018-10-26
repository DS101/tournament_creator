class Tournament < ApplicationRecord
  has_many :games
  has_and_belongs_to_many :teams
  has_many :tours
end

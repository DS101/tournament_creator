class Game < ApplicationRecord
  belongs_to :home_team, :class_name => :team
  belongs_to :away_team, :class_name => :team
  belongs_to :tournament
end

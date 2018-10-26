class Team < ApplicationRecord
  has_many :home_games, :foreign_key => :home_team_id, :class_name => :games
  has_many :away_games, :foreign_key => :away_team_id, :class_name => :games
  has_and_belongs_to_many :tournaments
  has_many :players
  validates :name, presence: true, length: { maximum: 40 }

  public

    def games
      arr = Array.new
      Game.where(:home_team_id => id).find_each do |m|
        arr << m
      end
      Game.where(:away_team_id => id).find_each do |m|
        arr << m
      end
      return arr
    end
end

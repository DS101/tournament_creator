class Player < ApplicationRecord
  belongs_to :team, optional: true
  validates :name, :born_on, :surname, presence: true
  validates_format_of :name, :surname, :with => /\A[a-zA-Z]+\z/i
end

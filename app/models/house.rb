class House < ActiveRecord::Base
  has_many :rooms
  has_many :monsters, through: :rooms
  has_many :heroes
end

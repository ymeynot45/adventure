class Room < ActiveRecord::Base
  belongs_to :house
  has_many :rooms
  has_many :exits
  has_one :monster
end

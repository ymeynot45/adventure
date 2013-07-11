class Monster < ActiveRecord::Base
  belongs_to :room
  belongs_to :house through: :room
end

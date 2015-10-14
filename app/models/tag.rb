class Tag < ActiveRecord::Base
  has_many :taggings
  has_manny :opportunities, through: :taggings
end

class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :opportunities, through: :taggings
end

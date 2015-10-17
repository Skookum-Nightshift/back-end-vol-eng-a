class Organization < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :opportunities
end

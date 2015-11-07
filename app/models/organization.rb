class Organization < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations
  has_many :opportunities
  accepts_nested_attributes_for :categories, allow_destroy: true
end

class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :organizations, through: :categorizations
end

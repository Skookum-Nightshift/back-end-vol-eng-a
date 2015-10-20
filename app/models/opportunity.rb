class Opportunity < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :organization
end

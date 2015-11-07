class Opportunity < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :organization

  def self.find_opps(tag_ary)
   
      Opportunity.tagged_with(tag_ary, any: true).shuffle
    end
end

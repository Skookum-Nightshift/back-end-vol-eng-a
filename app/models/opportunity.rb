class Opportunity < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :organization

  def find_opps(tag_ary)
    Opportunity.tagged_with(tag_ary, :match_all => true)
  end
end

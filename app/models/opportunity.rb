class Opportunity < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :organization

  def self.find_opps(tag_ary)
    most_idx = nil

    groups = tag_ary.inject({}) do |hsh, tag|
    hsh[tag] = [] if hsh[tag].nil?
    hsh[tag] << tag

    most_idx = tag if hsh[most_idx].nil? || hsh[tag].size > hsh[most_idx].size 
    hsh
  end

   newArray = groups[most_idx]
   newArray.push(tag_ary[0])

      Opportunity.tagged_with(newArray, any: true).first(6)
    end
end

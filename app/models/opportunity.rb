class Opportunity < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :organization

  def self.finder(tag_ids) #returns array of opportunities that have max number of tag matches
     matches = {}
     Opportunity.all.each do |opp|
       matches[opp.id] = 0
       opp.tags.each do |tag|
         matches[opp.id] += 1 if tag_ids.include?(tag.id)
       end
     end
     max = matches.values.max
     x = Hash[matches.select {|k,v| v == max }]
     results = []
     x.each_key {|key| results << Opportunity.find(key)}
     results
  end
end

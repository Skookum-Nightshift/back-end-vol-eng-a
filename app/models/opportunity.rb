class Opportunity < ActiveRecord::Base
  acts_as_taggable_on :tags
  belongs_to :organization

  def self.find_opps(tag_ary)

  	if(tag_ary[0]=="no-background-check") 
  		idList = []


  		byOppId = Opportunity.tagged_with(tag_ary, any: true).find_each do |opportunity|
 			opportunity.tags.find_each do |tag|   
     			if(tag.name == "education" || tag.name == "children-and-teens" || tag.name == "background-check" )     
    				idList.push(opportunity.id)      
     				break      
    			end  
  			end  
  		 end  

  		 filteredList = Opportunity.tagged_with(tag_ary, any: true)
  		 idList.each {|x| filteredList = filteredList.where.not(id:x)}
  		 return filteredList.shuffle
  	else
  		Opportunity.tagged_with(tag_ary, any: true).shuffle
    end
end
end

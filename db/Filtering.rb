
  byOppId = Opportunity.tagged_with("orientation", any: true).find_each do |opportunity|
  opportunity.tags.find_each do |tag|   
     if(tag.name == "education" || tag.name == "children-and-teens" )     
      idList.push(opportunity.id)      
     break      
    end  
  end  
   end  

filteredList = Opportunity.tagged_with("orientation", any: true)
idList.each {|x| filteredList = filteredList.where.not(id:x)}
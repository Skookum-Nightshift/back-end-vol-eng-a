require 'json'

data = JSON.parse(File.read('db/fixtures/orgs.json'))

data.each do |org|
  x = Organization.create(name: org["name"], address: org["contact"]["address"], city: org["contact"]["city"], state: org["contact"]["state"], zip: org["contact"]["zip"], email: org["contact"]["email"], web: org["contact"]["web"], volunteer_url: org["contact"]["volunteer_url"], facebook: org["contact"]["facebook"], twitter: org["contact"]["twitter"], youtube: org["contact"]["youtube"], description: org["description"])

  org["categories"].each do |category|
    x.categories << Category.find_or_create_by(name: category.downcase)
  end

  org["opportunities"].each do |opportunity|
    y = Opportunity.create(name: opportunity["name"], address: opportunity["address"], description: opportunity["description"])
    opportunity["tags"].each do |tag|
      y.tag_list.add(tag.downcase)
    end
    x.opportunities << y
  end
end

Category.find(1).update_attributes(icon: "public/icons/children.svg")

Category.find(2).update_attributes(icon: "public/icons/lifeSkills.svg")

Category.find(3).update_attributes(icon: "public/icons/education.svg")

Category.find(4).update_attributes(icon: "public/icons/seniors.svg")

Category.find(5).update_attributes(icon: "public/icons/healthcare.svg")

Category.find(6).update_attributes(icon: "public/icons/employment.svg")

Category.find(7).update_attributes(icon: "public/icons/sportsAndRec.svg")

Category.find(8).update_attributes(icon: "public/icons/crisis.svg")

Category.find(9).update_attributes(icon: "public/icons/women.svg")

Category.find(10).update_attributes(icon: "public/icons/foodPrep.svg")

Category.find(11).update_attributes(icon: "public/icons/religious.svg")

Category.find(12).update_attributes(icon: "public/icons/medicalSupport.svg")

Category.find(13).update_attributes(icon: "public/icons/donationedGoods.svg")

Category.find(14).update_attributes(icon: "public/icons/domesticViolence.svg")

Category.find(15).update_attributes(icon: "public/icons/legalAid.svg")

Category.find(16).update_attributes(icon: "public/icons/disabilities.svg")




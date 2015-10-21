require 'json'

data = JSON.parse(File.read('db/fixtures/orgs.json'))

data.each do |org|
  x = Organization.create(name: org["name"], address: org["contact"]["address"], email: org["contact"]["email"], web: org["contact"]["web"], volunteer_url: org["contact"]["volunteer_url"], facebook: org["contact"]["facebook"], twitter: org["contact"]["twitter"], youtube: org["contact"]["youtube"], description: org["description"])

  org["categories"].each do |category|
    x.categories << Category.find_or_create_by(name: category)
  end

  org["opportunities"].each do |opportunity|
    y = Opportunity.create(name: opportunity["name"], address: opportunity["address"], description: opportunity["description"])
    opportunity["tags"].each do |tag|
      y.tag_list.add(tag)
    end
    x.opportunities << y
  end
end
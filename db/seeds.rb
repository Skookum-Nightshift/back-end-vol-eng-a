require 'json'

data = JSON.parse(File.read('db/fixtures/orgs.json'))

data.each do |org|
  x = Organization.create(name: org["name"])

  org["categories"].each do |category|
    x.categories << Category.find_or_create_by(name: category)
  end

  org["opportunities"].each do |opportunity|
    y = Opportunity.create(name: opportunity["name"])
    opportunity["tags"].each do |tag|
      y.tags << Tag.find_or_create_by(name: tag)
    end
    x.opportunities << y
  end
end
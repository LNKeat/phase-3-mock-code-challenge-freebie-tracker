puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
companies = Company.all.map { |c| c.id }
devs= Dev.all.map { |d| d.id }

Freebie.create(item_name: "first freeb item", value: 10, dev_id: devs[0], company_id: companies[3] )
Freebie.create(item_name: "second freeb item", value: 23, dev_id: devs[1], company_id: companies[2])
Freebie.create(item_name: "third freeb item", value: 36, dev_id: devs[2], company_id: companies[1])
Freebie.create(item_name: "fourth freeb item", value: 41, dev_id: devs[3], company_id: companies[0])
Freebie.create(item_name: "another freeb item", value: 10, dev_id: devs[1], company_id: companies[1] )


puts "Seeding done!"

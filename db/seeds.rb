puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
meta = Company.create(name: "Meta", founding_year: 2004)
dunder = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
meseeks = Dev.create(name: "Mr. Meseeks")
gazor = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "sticker", value: 10, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "wrist band", value: 7, dev_id: rick.id, company_id: gazor.id)
Freebie.create(item_name: "hand band", value: 10, dev_id: morty.id, company_id: meta.id)
Freebie.create(item_name: "necklace", value: 5, dev_id: meseeks.id, company_id: dunder.id)
Freebie.create(item_name: "leglace", value: 5, dev_id: rick.id, company_id: google.id)
Freebie.create(item_name: "keyholder", value: 6, dev_id: gazor.id, company_id: google.id)
Freebie.create(item_name: "keyholder", value: 6, dev_id: rick.id, company_id: meta.id)
Freebie.create(item_name: "keyholder", value: 6, dev_id: morty.id, company_id: google.id)
puts "Seeding done!"

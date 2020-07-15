# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pharma.destroy_all
Medicine.destroy_all
Order.destroy_all

u1 = User.create(first_name: "Gbenga", last_name: "Ojo-Aromokudu", sex: "Male", date_of_birth: 868985448000, phone: 12345678900, address: "St.Pancras Renaissance Hotel,Euston Rd, Kings Cross, London NW1 2AR", allergies: "Pollen", medication: "Some conflicting medication")
u2 = User.create(first_name: "Test User", last_name: "Test Last Name", sex: "Female", date_of_birth: 824945468050, phone: 98765432100, address: "The British Library, 96 Euston Rd, London NW1 2DB", allergies: "Shellfish", medication: "Some other conflicting medication")

p1 = Pharma.create(name: "Clockwok Pharmacy", address: "150 Southampton Row, Holborn, London WC1B 5AN", website: "http://www.clockworkpharmacy.com/", phone: 442078377143)
p2 = Pharma.create(name: "Evergreen Pharmacy", address: "64 Eversholt St, London NW1 1DA", website: "https://www.nhs.uk/Services/pharmacies/Overview/DefaultView.aspx?id=3755", phone: 442073875826)
p3 = Pharma.create(name: "John Walker Chemist", address: "Leigh St, Saint Pancras, London WC1H 9QX", website: "http://johnwalkerchemist.co.uk/", phone: 442073871789)
p4 = Pharma.create(name: "Green Light Pharmacy", address: "62-64 Hampstead Rd, London NW1 2NT", website: "http://www.greenlightpharmacy.co.uk/", phone: 442073873233)
p5 = Pharma.create(name: "Shiv Pharmacy", address: "70 Great Titchfield St, Fitzrovia, London W1W 7QN", website: "https://www.nhs.uk/Services/pharmacies/Overview/DefaultView.aspx?id=110711", phone: 442075802393)

m1 = Medicine.create(name: "Cetirizine Hyrochloride", price: 2.70, pharma_id: p4.id, instructions: "1 per day", quantity: 63)
m2 = Medicine.create(name: "Paracetemol", price: 0.50, pharma_id: p4.id, instructions: "1 per day", quantity: 63)
m3 = Medicine.create(name: "Paracetemol", price: 0.50, pharma_id: p1.id, instructions: "1 per day", quantity: 42)
m4 = Medicine.create(name: "Paracetemol", price: 0.50, pharma_id: p2.id, instructions: "1 per day", quantity: 26)
m5 = Medicine.create(name: "Paracetemol", price: 0.50, pharma_id: p3.id, instructions: "1 per day", quantity: 30)
m6 = Medicine.create(name: "Ointment", price: 0.50, pharma_id: p3.id, instructions: "Apply twice daily to the affected area", quantity: 30)
m7 = Medicine.create(name: "Beconase Nasal Spray", price: 5.60, pharma_id: p4.id, instructions: "Spray twice daily in each nostril", quantity: 30)
m8 = Medicine.create(name: "Beconase Nasal Spray", price: 5.60, pharma_id: p3.id, instructions: "Spray twice daily in each nostril", quantity: 30)
m9 = Medicine.create(name: "Beconase Nasal Spray", price: 5.60, pharma_id: p2.id, instructions: "Spray twice daily in each nostril", quantity: 24)
m10 = Medicine.create(name: "Sodium Hydroglicate", price: 2.60, pharma_id: p2.id, instructions: "Apply 1 drop to each eye up t 4 times per day", quantity: 80)
m11 = Medicine.create(name: "Sodium Hydroglicate", price: 2.60, pharma_id: p3.id, instructions: "Apply 1 drop to each eye up t 4 times per day", quantity: 50)
m12 = Medicine.create(name: "Amoxicillin", price: 4.50, pharma_id: p1.id, instructions: "Twice daily", quantity: 50)
m13 = Medicine.create(name: "Amoxicillin", price: 4.50, pharma_id: p3.id, instructions: "Twice daily", quantity: 50)
m14 = Medicine.create(name: "Amoxicillin", price: 4.50, pharma_id: p2.id, instructions: "Twice daily", quantity: 50)
m15 = Medicine.create(name: "Fexophenadine", price: 6.50, pharma_id: p1.id, instructions: "Twice daily", quantity: 50)
m16 = Medicine.create(name: "Loratidine", price: 2.30, pharma_id: p4.id, instructions: "Once daily", quantity: 50)
m17 = Medicine.create(name: "Loratidine", price: 2.30, pharma_id: p3.id, instructions: "Once daily", quantity: 50)
m18 = Medicine.create(name: "Loratidine", price: 2.30, pharma_id: p1.id, instructions: "Once daily", quantity: 50)
m19 = Medicine.create(name: "Vitamin B12", price: 4.80, pharma_id: p2.id, instructions: "Once daily", quantity: 50)
m20 = Medicine.create(name: "Vitamin B12", price: 4.80, pharma_id: p4.id, instructions: "Once daily", quantity: 50)

o1 = Order.create(user_id: u1.id, medicine_id: m1.id, delivery_date: 868985448000, no_contact: false)
o2 = Order.create(user_id: u1.id, medicine_id: m14.id, delivery_date: 869985448000, no_contact: true)
o3 = Order.create(user_id: u1.id, medicine_id: m8.id, delivery_date: 869785448000, no_contact: true)
o4 = Order.create(user_id: u1.id, medicine_id: m6.id, delivery_date: 868785448000, no_contact: false)
o5 = Order.create(user_id: u2.id, medicine_id: m2.id, delivery_date: 868985448000, no_contact: false)
o6 = Order.create(user_id: u2.id, medicine_id: m5.id, delivery_date: 869985448000, no_contact: true)
o7 = Order.create(user_id: u2.id, medicine_id: m19.id, delivery_date: 869785448000, no_contact: true)
o8 = Order.create(user_id: u2.id, medicine_id: m20.id, delivery_date: 868785448000, no_contact: false)
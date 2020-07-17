# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stock.destroy_all
OrderMedicine.destroy_all
Order.destroy_all
User.destroy_all
Pharma.destroy_all
Medicine.destroy_all

u1 = User.create(first_name: "Gbenga", last_name: "Ojo-Aromokudu", sex: "Male", dob: "1595008141", phone: "12345678900", address: "St.Pancras Renaissance Hotel,Euston Rd, Kings Cross, London NW1 2AR", allergies: "Pollen")
u2 = User.create(first_name: "Test User", last_name: "Test Last Name", sex: "Female", dob: "1595008141", phone: "98765432100", address: "The British Library, 96 Euston Rd, London NW1 2DB", allergies: "Shellfish")

p1 = Pharma.create(name: "Clockwork Pharmacy", address: "150 Southampton Row, Holborn, London WC1B 5AN", website: "http://www.clockworkpharmacy.com/", phone: "+442078377143")
p2 = Pharma.create(name: "Evergreen Pharmacy", address: "64 Eversholt St, London NW1 1DA", website: "https://www.nhs.uk/Services/pharmacies/Overview/DefaultView.aspx?id=3755", phone: "+442073875826")
p3 = Pharma.create(name: "John Walker Chemist", address: "Leigh St, Saint Pancras, London WC1H 9QX", website: "http://johnwalkerchemist.co.uk/", phone: "+442073871789")
p4 = Pharma.create(name: "Green Light Pharmacy", address: "62-64 Hampstead Rd, London NW1 2NT", website: "http://www.greenlightpharmacy.co.uk/", phone: "+442073873233")
p5 = Pharma.create(name: "Shiv Pharmacy", address: "70 Great Titchfield St, Fitzrovia, London W1W 7QN", website: "https://www.nhs.uk/Services/pharmacies/Overview/DefaultView.aspx?id=110711", phone: "+442075802393")

m1 = Medicine.create(name: "Cetirizine Hyrochloride", instructions: "1 per day")
m2 = Medicine.create(name: "Paracetemol", instructions: "Max 4 times per day")
m3 = Medicine.create(name: "Daktarin Ointment", instructions: "Apply twice per day")
m4 = Medicine.create(name: "Daktakort", instructions: "twice per day")
m5 = Medicine.create(name: "Lemsip", instructions: "Maxium 4 times per day")
m6 = Medicine.create(name: "Night Nurse", instructions: "Once before bed")
m7 = Medicine.create(name: "Beconase Nasal Spray", instructions: "Spray twice per day in each  nostril")
m8 = Medicine.create(name: "Vicks rub", instructions: "Apply to the chest up to twice per day")
m9 = Medicine.create(name: "Mefenamic acid", instructions: "Three times per day")
m10 = Medicine.create(name: "Sodium Hydroglicate", instructions: "Apply 1 drop  up t 4 times per day")
m11 = Medicine.create(name: "Omeprazole", instructions: "Once per day")
m12 = Medicine.create(name: "Amoxicillin", instructions: "Twice daily")
m13 = Medicine.create(name: "Lanzoprazole", instructions: "Once a day")
m14 = Medicine.create(name: "Amoxicillin", instructions: "Twice daily")
m15 = Medicine.create(name: "Fexophenadine", instructions: "Twice daily")
m16 = Medicine.create(name: "Loratidine", instructions: "Once daily")
m17 = Medicine.create(name: "Loperamide", instructions: "Once after every loose stool")
m18 = Medicine.create(name: "Lonart", instructions: "Once daily for 3 days")
m19 = Medicine.create(name: "Vitamin B12", instructions: "Once daily")
m20 = Medicine.create(name: "Ibuprofen", instructions: "3 times per day")

s1 = Stock.create(medicine_id: m20.id, pharma_id: p3.id, price: 3.10 , quantity: 65)
s2 = Stock.create(medicine_id: m19.id, pharma_id: p2.id, price: 1.10 , quantity: 5)
s3 = Stock.create(medicine_id: m18.id, pharma_id: p2.id, price: 3.60 , quantity: 75)
s4 = Stock.create(medicine_id: m17.id, pharma_id: p5.id, price: 3.20 , quantity: 55)
s5 = Stock.create(medicine_id: m16.id, pharma_id: p5.id, price: 4.15 , quantity: 25)
s6 = Stock.create(medicine_id: m15.id, pharma_id: p5.id, price: 2.10 , quantity: 60)
s7 = Stock.create(medicine_id: m14.id, pharma_id: p5.id, price: 7.75 , quantity: 104)
s8 = Stock.create(medicine_id: m13.id, pharma_id: p2.id, price: 6.10 , quantity: 134)
s9 = Stock.create(medicine_id: m12.id, pharma_id: p2.id, price: 8.48 , quantity: 43)
s10 = Stock.create(medicine_id: m1.id, pharma_id: p1.id, price: 10.00 , quantity: 65)
s11 = Stock.create(medicine_id: m2.id, pharma_id: p1.id, price: 8.50 , quantity: 75)
s12 = Stock.create(medicine_id: m3.id, pharma_id: p3.id, price: 3.05 , quantity: 65)
s13 = Stock.create(medicine_id: m4.id, pharma_id: p1.id, price: 7.10 , quantity: 695)
s14 = Stock.create(medicine_id: m5.id, pharma_id: p4.id, price: 3.10 , quantity: 85)
s15 = Stock.create(medicine_id: m6.id, pharma_id: p3.id, price: 9.40 , quantity: 85)
s16 = Stock.create(medicine_id: m7.id, pharma_id: p4.id, price: 7.45 , quantity: 45)
s17 = Stock.create(medicine_id: m8.id, pharma_id: p4.id, price: 6.15 , quantity: 70)
s18 = Stock.create(medicine_id: m9.id, pharma_id: p4.id, price: 3.15 , quantity: 650)
s19 = Stock.create(medicine_id: m10.id, pharma_id: p4.id, price: 9.45 , quantity: 95)
s20 = Stock.create(medicine_id: m11.id, pharma_id: p3.id, price: 9.45 , quantity: 95)

o1 = Order.create(user_id: u1.id, delivery_date: "1595353741", no_contact: false)
o2 = Order.create(user_id: u1.id, delivery_date: "1595958541", no_contact: true)
o3 = Order.create(user_id: u1.id, delivery_date: "1595353741", no_contact: true)
o4 = Order.create(user_id: u1.id, delivery_date: "1595958541", no_contact: false)
o5 = Order.create(user_id: u2.id, delivery_date: "1595353741", no_contact: false)
o6 = Order.create(user_id: u2.id, delivery_date: "1595958541", no_contact: true)
o7 = Order.create(user_id: u2.id, delivery_date: "1595353741", no_contact: true)
o8 = Order.create(user_id: u2.id, delivery_date: "1595958541", no_contact: false)

om1 = OrderMedicine.create(order_id: o1.id, medicine_id: m1.id)
om2 = OrderMedicine.create(order_id: o1.id, medicine_id: m2.id)
om3 = OrderMedicine.create(order_id: o3.id, medicine_id: m13.id)
om4 = OrderMedicine.create(order_id: o4.id, medicine_id: m4.id)
om5 = OrderMedicine.create(order_id: o8.id, medicine_id: m8.id)
om6 = OrderMedicine.create(order_id: o6.id, medicine_id: m16.id)
om7 = OrderMedicine.create(order_id: o2.id, medicine_id: m12.id)
om8 = OrderMedicine.create(order_id: o5.id, medicine_id: m18.id)
om9 = OrderMedicine.create(order_id: o7.id, medicine_id: m5.id)
om10 = OrderMedicine.create(order_id: o4.id, medicine_id: m13.id)
om11 = OrderMedicine.create(order_id: o2.id, medicine_id: m19.id)
om12 = OrderMedicine.create(order_id: o2.id, medicine_id: m17.id)
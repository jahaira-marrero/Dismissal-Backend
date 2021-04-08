# Teachers
20.times do
    name = Faker::Name.unique.name
    User.create(name: name, role: "Teacher", password: "Teacher123")
end

# Transportation
bus1 = Transportation.create(name: "Bus 1")
bus2 = Transportation.create(name: "Bus 2")
walker = Transportation.create(name: "Walker")
car = Transportation.create(name: "Car Rider")

transArray = [bus1, bus2, walker, car]

# Students
80.times do
    name = Faker::Name.unique.name
    address = Faker::Address.full_address
    guardian = Faker::Name.unique.name
    phone = Faker::PhoneNumber.cell_phone
    hw = Random.rand(1..6)
    transportation = Transportation.all.sample.id
    Student.create(name: name, address: address, guardian: guardian, phone: phone, homeroom: hw, transportation_id: transportation)

# Changes
change1 = Change.create(date: "4/7/21", user_id: 1, transportation_id: 1, student_id: 9)
end



puts "Ready to rock and roll!"

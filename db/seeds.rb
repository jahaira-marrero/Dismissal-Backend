User.destroy_all
User.reset_pk_sequence
Transportation.destroy_all
Transportation.reset_pk_sequence
Change.destroy_all
Change.reset_pk_sequence
Student.destroy_all
Student.reset_pk_sequence





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
early = Transportation.create(name: "Early Pick Up")
transArray = [bus1, bus2, walker, car]

cellphone = [3210001234, 3211231234, 3213211234, 3210011234, 3210021234, 3210031234, 3210041234]

# Students
80.times do
    name = Faker::Name.unique.name
    address = Faker::Address.full_address
    guardian = Faker::Name.unique.name
    phone = cellphone.sample
    hw = Random.rand(1..6)
    transportation = transArray.sample
    Student.create!(name: name, address: address, guardian: guardian, phone: phone, homeroom: hw, transportation_id: transportation.id)
end 

# Changes
change1 = Change.create(date: "4/7/21", user_id: 1, transportation_id: 1, student_id: 9)
change2 = Change.create(date: "4/8/21", user_id: 2, transportation_id: 5, student_id: 5)



puts "Ready to rock and roll!"

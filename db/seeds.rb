
20.times do
    name = Faker::Name.unique.name
    User.create(name: name, role: "Teacher", password: "Teacher123")
end

puts "Ready to rock and roll!"

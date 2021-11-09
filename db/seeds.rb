puts "audition data"
Audition.create(actor: "Al", location: "NYC", phone: 12345632154, hired: false, role_id: 3)
Audition.create(actor: "Lulu", location: "BK", phone: 32468612368654, hired: true, role_id: 3)
Audition.create(actor: "Lisa", location: "CA", phone: 1223541248, hired: true, role_id: 2)
Audition.create(actor: "Tim", location: "LI", phone: 124846562154, hired: false, role_id: 1)


puts "role data"
Role.create(character_name: "Penguin")
Role.create(character_name: "Polar Bear")
Role.create(character_name: "Peanut Butter")
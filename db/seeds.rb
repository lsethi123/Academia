# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p "Initialize schools"
uc_schools = ["UCLA", "UC Berkeley", "UC San Diego"]
csu_schools = ["CSULA", "Cal Poly Pomona", "CSU Long Beach"]


p "create the school of all schools"
school = {
  :name => "School of all Schools",
  :archived => 0
}

parent_school = School.create!(school)
school_info = {
  :uc_id => 0,
  :csu_id => 0
}

p "create two school systems and networks"
["UC", "CSU"].each do |school|

  new_school = School.create!({
    :name => "#{school} School System",
    :archived => 0,
    :parent_school_id => parent_school.id
  })

  school_info["#{school.downcase}_id".to_sym] = new_school.id

  new_network = Network.create!({
    :name => "#{school} Superintendent Network",
    :archived => 0
  })

  SchoolNetwork.create!({
    :school_id => new_school.id,
    :network_id => new_network.id,
    :role => "superintendent",
    :archived => 0
  })

end

uc_school_network = Network.create!({
  :name => "UC School",
  :archived => 0
})

p "Create schools into school systems"
uc_schools.each do |school|
  new_school = School.create!({
    :name => school,
    :archived => 0,
    :parent_school_id => school_info[:uc_id]
  })

  ["principal", "teacher", "student"].each do |role|

    new_network = Network.create!({
      :name => "#{school} #{role.capitalize} Network",
      :archived => 0
    })

    SchoolNetwork.create!({
      :school_id => new_school.id,
      :network_id => new_network.id,
      :role => role,
      :archived => 0
    })

  end  
end

csu_schools.each do |school|
  new_school = School.create!({
    :name => school,
    :archived => 0,
    :parent_school_id => school_info[:csu_id]
  })

  ["principal", "teacher", "student"].each do |role|
    new_network = Network.create!({
      :name => "#{school} #{role.capitalize} Network",
      :archived => 0
    })

    SchoolNetwork.create!({
      :school_id => new_school.id,
      :network_id => new_network.id,
      :role => role,
      :archived => 0
    })

  end  
end

p "CSU System"
p "Create Student Users and Student User Networks"
csu_network = Network.find_by_name("Cal Poly Pomona Student Network")
user1 = SchoolUser.create!({name: "Student Sam Newman", :username => "testuser1", :password => "test123"})
user2 = SchoolUser.create!({name: "Student Bob Test", :username => "testuser2", :password => "test456"})

SchoolUserNetwork.create!({
  :school_user_id => user1.id,
  :network_id => csu_network.id
})

SchoolUserNetwork.create!({
  :school_user_id => user2.id,
  :network_id => csu_network.id
})

csu_network = Network.find_by_name("Cal Poly Pomona Teacher Network")
user1 = SchoolUser.create!({name: "Teacher Alice Wong", :username => "omega1", :password => "test123"})
user2 = SchoolUser.create!({name: "Teacher Jake Strong", :username => "omega2", :password => "test456"})


p "Create Teacher Users and Teacher User Networks"
SchoolUserNetwork.create!({
  :school_user_id => user1.id,
  :network_id => csu_network.id
})

SchoolUserNetwork.create!({
  :school_user_id => user2.id,
  :network_id => csu_network.id
})

csu_network = Network.find_by_name("Cal Poly Pomona Principal Network")
user1 = SchoolUser.create!({name: "Principal Alice Wong", :username => "delta1", :password => "test123"})
user2 = SchoolUser.create!({name: "Principal Jake Strong", :username => "delta2", :password => "test456"})


p "Create Principal Users and Principal User Networks"
SchoolUserNetwork.create!({
  :school_user_id => user1.id,
  :network_id => csu_network.id
})

SchoolUserNetwork.create!({
  :school_user_id => user2.id,
  :network_id => csu_network.id
})



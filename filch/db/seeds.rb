# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Geofence name:,address:,latitude:,longitud:
stgo = Geofence.new(name: "Buckingham Palace", address:"so", latitud: 51.501564,longitud: -0.141944)
#valpo = Geofence.new(name: "Westminster Abbey", address:"so", latitud: 51.499581, longitud: -0.127309)
#ranc = Geofence.new(name: "Big Ben", address:"so", latitud: 51.500792, longitud: -0.124613)

#geofences = [stgo , valpo , ranc]

#for g in geofences do
#	g.save!
#end
#User  name:,lastname:,geofence_id:,role:,uid:,provider:,sex:,biography:,created_at:,updated_at:,email:

user1 = User.new(  name: 'Alberto ' , lastname:'Altermatt' , email: 'ajaltermatt@miuandes.cl', password: '123123', biography:'something here', role: 'SuperAdmin', geofence_id: stgo.id, sex: 'Male',updated_at:Time.now)
user2 = User.new(  name: 'Vicente ' ,lastname:'Wohl' , email: 'vawohl@miuandes.cl', password: '1123123',biography:'something here', role: 'Admin', geofence_id: stgo.id, sex: 'Male',updated_at:Time.now)
user3 = User.new(  name: 'Juanito ' ,lastname:'Martinez' , email: 'jmartinez@miuandes.cl', password: '123123',biography:'something here', geofence_id: stgo.id, sex: 'Male',updated_at:Time.now)

users = [ user1 , user2 , user3 ]
 for u in users do 
 	u.save!
 end

#Rant user_id:,geofence_id:,title:,description:,like:,unlike:,status:,inapropiate:,visibility:,created_at:,updated_at:,geofence_id:,user_id:
rant1 = Rant.create!(title: 'Transportation in San Carlos it is very bad', description: 'When I came back to home from university, it is a hole mess because transantiago buses are full from its capacity so it takes one hour to get tu Los Dominicos Subway',  user_id: user1.id, geofence_id: stgo.id, like: 3, unlike: 1,  status: 'Permit', inapropiate: 0, visibility: true)
rant2 = Rant.create!(title: 'Transportation in San Carlos it is very bad', description: 'When I came back to home from university, it is a hole mess because transantiago buses are full from its capacity so it takes one hour to get tu Los Dominicos Subway',  user_id: user2.id, geofence_id: stgo.id, like: 3, unlike: 1,  status: 'Permit', inapropiate: 0, visibility: true)
rant3 = Rant.create!(title: 'Transportation in San Carlos it is very bad', description: 'When I came back to home from university, it is a hole mess because transantiago buses are full from its capacity so it takes one hour to get tu Los Dominicos Subway',  user_id: user3.id, geofence_id: stgo.id, like: 3, unlike: 1,  status: 'Permit', inapropiate: 0, visibility: true)
rant4 = Rant.create!(title: 'Transportation in San Carlos it is very bad', description: 'When I came back to home from university, it is a hole mess because transantiago buses are full from its capacity so it takes one hour to get tu Los Dominicos Subway',  user_id: user1.id, geofence_id: stgo.id, like: 3, unlike: 1,  status: 'Permit', inapropiate: 0, visibility: true)
rant5 = Rant.create!(title: 'Transportation in San Carlos it is very bad', description: 'When I came back to home from university, it is a hole mess because transantiago buses are full from its capacity so it takes one hour to get tu Los Dominicos Subway',  user_id: user2.id, geofence_id: stgo.id, like: 3, unlike: 1,  status: 'Permit', inapropiate: 0, visibility: true)

rants = [ rant1,rant2,rant3,rant4,rant5 ]

for po in rants do 
	po.save!
end
#comment user_id:,rant_id:,description:,like:,unlike:,inapropiate:,


#comment = Comment.new(rant_id: rant2.id, user_id: user2.id, description: 'I am agree with you my friend. The system is not efficent', like: 1, unlike: 0)
 


#comments = [ comment ]

#for c in comments do 
#	c.save!
#end

blacklist = Blacklist.new() #empty for now

dumpster = Dumpster.new() #empty for now
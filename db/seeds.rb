# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(nick:'Jauger', name:'Jaime', lastname:'Auger', email:"jiaguer@miuandes.cl", phone:912345678, description:'text', password:'password', picture:'img_001', admin:false)
User.create(nick:'Jauger', name:'Cristian', lastname:'Cortes', email:"ccortes@miuandes.cl", phone:4688532467, description:'text', password:'password1', picture:'img_002', admin:true)
User.create(nick:'Jauger', name:'Tafano', lastname:'Aristondo', email:"saristondo@miuandes.cl", phone:35689654567, description:'text', password:'password2', picture:'img_003', admin:false)
User.create(nick:'Jauger', name:'Javier', lastname:'Silva', email:"jsilva@miuandes.cl", phone:912115678, description:'text', password:'password3', picture:'img_004', admin:true)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
visit_requests = VisitRequest.create([{scheduled: Time.zone.parse('2018-07-11 21:00'),
  visitor_name: 'José Ávila', visitor_email: 'joseavila@gmail.com', visit_type: 0, approved: false},
  {scheduled: Time.zone.parse('2018-06-19'), visitor_name: 'Erika Suárez',
    visitor_email: 'esuarez@gmail.com', visit_type: 1, approved: false}])

users = User.create([{name: 'Orlando Apipilhuasco', email: 'orlando@ciencias.unam.mx',
  password: 'orlando'},{name: 'Daniel Monroy', email: 'danielmonroy@ciencias.unam.mx', password: 'daniel'},{name: 'Diego Magallanes', email: 'diego@ciencias.unam.mx', password: 'diegom'}])

visits = Visit.create([{scheduled: Time.zone.parse('2018-06-04'), visitor_name: 'Vicenta Monroy',
  visitor_email: 'v_monroym@hotmail.com', visit_type: 1, user_id: 2},
  {scheduled: Time.zone.parse('2018-06-06'), visitor_name: 'José Luis Guerra',
    visitor_email: 'guerra@hotmail.com', visit_type: 0, user_id: 3}])

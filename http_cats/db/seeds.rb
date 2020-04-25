# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# '2015/01/20'

c1 = Cat.create!(birth_date: '2015/01/20' , color: 'orange' , name: 'Tabby', sex:'M' )
c2 = Cat.create!(birth_date: '2011/03/10' , color: 'black' , name: 'Oscar', sex:'M' )
c3 = Cat.create!(birth_date: '2002/05/26' , color: 'white' , name: 'Furry', sex:'F' )
c4 = Cat.create!(birth_date: '2007/08/10' , color: 'black' , name: 'Vader', sex:'M' )
c5 = Cat.create!(birth_date: '2009/09/30' , color: 'orange' , name: 'Frank', sex:'M' )

r2 = CatRentalRequest.create!(cat_id: c2.id, start_date: '2020/05/01', end_date: '2020/06/01', status: 'APPROVED')
r1 = CatRentalRequest.create!(cat_id: c1.id, start_date: '2020/05/01', end_date: '2020/06/01', status: 'APPROVED')
r3 = CatRentalRequest.create!(cat_id: c3.id, start_date: '2020/05/01', end_date: '2020/06/01', status: 'APPROVED')
r4 = CatRentalRequest.create!(cat_id: c4.id, start_date: '2020/05/01', end_date: '2020/06/01', status: 'APPROVED')
r5 = CatRentalRequest.create!(cat_id: c5.id, start_date: '2020/05/01', end_date: '2020/06/01', status: 'APPROVED')
r6 = CatRentalRequest.create!(cat_id: c1.id, start_date: '2020/05/15', end_date: '2020/06/15', status: 'PENDING')
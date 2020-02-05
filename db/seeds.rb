# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)
Campervan.create!(
  title: 'Beautiful vintage campervan',
  description: 'Travel in style in this retro campervan.',
  address: '10 Clifton Gardens London W9 1DT',
  price: 250,
  user_id: 1
)

Campervan.create!(
  title: 'Lovely Campervan near centre of town',
  description: 'This super cool camper has been around the block but is a beauty!',
  address: '12a Cheshire street, E2 6EH',
  price: 400,
  user_id: 1
)

Campervan.create!(
  title: 'Cool beach camper',
  description: 'One in a million camper.  Great for beach and camping holidays',
  address: '10 Fleet Mews, Barstaple',
  price: 300,
  user_id: 1

)

Campervan.create!(
  title: 'Amazing vintage Campervan',
  description: 'Great for weekend getaways with a difference',
  address: '15 Cheshire Stree, London, E2 6EH',
  price: 400,
  user_id: 1

)

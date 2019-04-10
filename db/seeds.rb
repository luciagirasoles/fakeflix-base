# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# == Schema Information
#
# Table name: movies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  duration    :integer
#  price       :integer
#  progress    :integer          default(0)
#  rating      :integer
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

movie1 = Movie.create(title: 'Star Wars')
movie2 = Movie.create(title: 'It')


# == Schema Information
# Table name: rentals
#  id            :bigint(8)        not null, primary key
#  paid_price    :integer
#  rentable_type :string           indexed => [rentable_id]
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rentable_id   :bigint(8)        indexed => [rentable_type]
#
#

movie1.rentals.create(paid_price: 230)

############################################
# Table name: series
#  id          :bigint(8)        not null, primary key
#  description :text
#  price       :integer
#  rating      :integer
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

serie1 = Serie.create(title: 'Stranger Things', status: 'preorder')
serie2 = Serie.create(title: 'Osmosis')
serie3 = Serie.create(title: 'NCIS - NY')

serie1.rentals.create(paid_price: 250)

episode11 = Episode.create(title:'S1-Ep1 - Title 1', serie_id: serie1['id'], duration: 2400 ) #seconds
episode12 = Episode.create(title:'S1-Ep2 - Title 2', serie_id: serie1['id'], duration: 2600 )
episode13 = Episode.create(title:'S1-Ep3 - Title 3', serie_id: serie1['id'], duration: 1200 )

episode21 = Episode.create(title:'S2-Ep1 - Title 1', serie_id: serie2['id'], duration: 1200 )
episode22 = Episode.create(title:'S2-Ep2 - Title 2', serie_id: serie2['id'], duration: 2400 )


# == Schema Information
# Table name: episodes
#  id          :bigint(8)        not null, primary key
#  description :text
#  duration    :integer
#  progress    :integer          default(0)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  serie_id    :bigint(8)        indexed
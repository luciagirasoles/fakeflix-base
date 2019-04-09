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
#
# Table name: rentals
#
#  id            :bigint(8)        not null, primary key
#  paid_price    :integer
#  rentable_type :string           indexed => [rentable_id]
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rentable_id   :bigint(8)        indexed => [rentable_type]
#
# Indexes
#
#  index_rentals_on_rentable_type_and_rentable_id  (rentable_type,rentable_id)
#

movie1.rentals.create(paid_price: 230)
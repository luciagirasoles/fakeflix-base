class Movie < ApplicationRecord
    enum status: { comingsoon: 0, preorder: 1, billboard: 2 }
    has_many :rentals, as: :rentable
end

# == Schema Information
#
# Table name: movies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  duration    :integer
#  price       :integer
#  progress    :integer
#  rating      :integer
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

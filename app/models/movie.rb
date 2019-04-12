class Movie < ApplicationRecord
    enum status: { comingsoon: 0, preorder: 1, billboard: 2 }
    enum rating: { bad: -1, no_rated: 0, good: 1 }
    has_many :rentals, as: :rentable

    def rented
        self.rentals.any?
    end
end

# == Schema Information
#
# Table name: movies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  duration    :integer
#  price       :integer
#  progress    :integer          default(0)
#  rating      :integer          default(0)
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

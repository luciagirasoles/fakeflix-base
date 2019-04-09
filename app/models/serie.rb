class Serie < ApplicationRecord
    has_many :episodes
    enum status: { comingsoon: 0, preorder: 1, billboard: 2 }
    has_many :rentals, as: :rentable

    def rented
        self.rentals.any?
      end

end

# == Schema Information
#
# Table name: series
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  price       :integer
#  rating      :integer
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

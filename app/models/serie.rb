class Serie < ApplicationRecord
    has_many :episodes
    enum status: { comingsoon: 0, preorder: 1, billboard: 2 }
    has_many :rentals, as: :rentable

    def rented
        self.rentals.any?
      end

    def duration
        self.episodes.sum(:duration)/60.0 #mins
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

#

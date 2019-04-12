require 'rails_helper'
describe RentalsController do

  describe 'POST create' do
    it 'returns http status created' do
      movie = Movie.create(title: 'It')
      post :create, params: {resource: 'movie', id: movie.id}
      expect(response.status).to eq(201)
      expect(response).to have_http_status(:created)
      expect(movie.rentals.count).to eq(1)
    end
  end
end

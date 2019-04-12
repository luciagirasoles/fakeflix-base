require 'rails_helper'
describe MoviesController do
  Movie.delete_all

  describe 'PATCH update' do
    it "returns http status ok" do
      movie = Movie.create(title: 'It', rating: 0, duration: 0, price:200)
      patch :update, params: {progress: 120, movie_id: movie.id}
      expect(response).to have_http_status(:ok)
    end
    
    it "returns the updated playback" do
      movie = Movie.create(title: 'It', rating: 0, duration: 0, price:200)
      patch :update, params: {progress: 120, movie_id: movie.id}
      parsed_response = JSON.parse response.body
      expect(parsed_response["progress"]).to eq(120)
    end
  end
end
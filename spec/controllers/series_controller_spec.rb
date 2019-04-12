require 'rails_helper'
require 'rails_helper'
describe SeriesController do
  before do
  Serie.delete_all
  end
  describe 'RATING update' do
    it "returns http status ok" do
      serie = Serie.create(title: 'Stranger Things', status: 'preorder', rating: 0)
      patch :rating, params: {rating: 'bad', series_id: serie.id}
      expect(response).to have_http_status(:ok)
    end
    
    it "returns the updated playback" do
      serie = Serie.create(title: 'Stranger Things', status: 'preorder', rating: 0)
      patch :rating, params: {rating: 'good', series_id: serie.id}
      parsed_response = JSON.parse response.body
      expect(parsed_response["rating"]).to eq('good')
    end
  end
end

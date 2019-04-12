require 'rails_helper'
describe EpisodesController do
  describe 'PATCH update' do
    it "returns http status ok" do
      serie = Serie.create(title: 'Stranger Things', status: 'preorder')
      episode11 = Episode.create(title:'S1-Ep1 - Title 1', serie_id: serie['id'], duration: 2400 )
      patch :update, params: {progress: 120, episode_id: episode11.id}
      expect(response).to have_http_status(:ok)
    end
    
    it "returns the updated playback" do
      serie = Serie.create(title: 'Stranger Things', status: 'preorder')
      episode11 = Episode.create(title:'S1-Ep1 - Title 1', serie_id: serie['id'], duration: 2400 )
      patch :update, params: {progress: 120, episode_id: episode11.id}
      parsed_response = JSON.parse response.body
      expect(parsed_response["progress"]).to eq(120)
    end
  end
end
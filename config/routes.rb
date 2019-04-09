Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    #GET /api/movies?filter=value  query tring ?key1=value1&key2=value2
    resources :movies, only: [:index, :show] do
      patch '/playback', to: 'movies#update'
    end

    resources :series, only: [:index, :show]
    resources :episodes, only: [:show] do
      patch '/playback', to: 'episodes#update'
    end
    post '/rents/:resource/:id',	to: 'rentals#create'
    get '/rents', to: 'rentals#index'
  end
    

end

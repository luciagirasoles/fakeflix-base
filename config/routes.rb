Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    #GET /api/movies?filter=value  query tring ?key1=value1&key2=value2
    resources :movies, only: [:index, :show]

    resources :series, only: [:index, :show]
    resources :episodes, only: [:show]
    post '/rents/:resource/:id',	to: 'rentals#create'
  end
    

end

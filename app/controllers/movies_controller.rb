class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:filter] #key desp de signo de interrogacion
      @movies = Movie.where(status: params[:filter]) # funciona con nro o con nombre
    end
    render json: @movies.as_json(methods: [:rented])
  end

  def show
    render json: Movie.find(params[:id]).as_json(methods: [:rented],except: [:created_at, :updated_at])
  end

  def update
    movie = Movie.find(params[:movie_id])
    movie["progress"] = params[:progress]
    movie.save
    render json: movie.as_json(only:[:progress])
  end

end

# Table name: movies
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  duration    :integer
#  price       :integer
#  progress    :integer          default(0)
#  rating      :integer
#  status      :integer          default("comingsoon")
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
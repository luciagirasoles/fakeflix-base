class SeriesController < ApplicationController
  def index
    @series = Serie.all
    if params[:filter] #key desp de signo de interrogacion
      @series = Serie.where(status: params[:filter]) # funciona con nro o con nombre
    end
    render json: @series.as_json(methods: [:rented])
  end

  def show
    render json: Serie.find(params[:id]).as_json(
      except: [:created_at, :updated_at], 
      include: { 
        episodes: { only: [:title, :duration]}
      },
      methods: [:rented, :duration]
    )
    
  end

  def update
  end

end
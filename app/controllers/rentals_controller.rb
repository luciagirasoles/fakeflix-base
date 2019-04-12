class RentalsController < ApplicationController
  def index
    render json: Rental.all.order('rentable_type').map {|rental| rental.rentable}.as_json(except: [:created_at, :updated_at], root: true)
  end

  def create
    #if params[:filter] 
    if params[:resource] == 'movie'
      @rental = Movie.find(params[:id]).rentals.create(paid_price: 230)
    elsif params[:resource] == 'serie'
      @rental = Serie.find(params[:id]).rentals.create(paid_price: 230)
    end
    render json: @rental, status: 201
    
  end


end
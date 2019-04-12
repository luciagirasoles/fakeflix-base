class EpisodesController < ApplicationController
  def index
    render json: Episode.all
  end
  def show
    render json: Episode.find(params[:id]).as_json(except: [:created_at, :updated_at])
  end
  def update
    episode= Episode.find(params[:episode_id])
    episode["progress"] = params[:progress]
    render json: episode.as_json(only:[:progress])
  end
end
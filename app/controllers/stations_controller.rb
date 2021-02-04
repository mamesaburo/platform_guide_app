class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
    if params[:platform_id].present?
      @platform = @station.platforms.find_by(number: params[:platform_id])
    else
      @platform = nil
    end
  end
end

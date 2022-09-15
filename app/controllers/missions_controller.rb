class MissionsController < ApplicationController
  def create
  end

  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
  end

  def update
  end

  def delete
  end
end

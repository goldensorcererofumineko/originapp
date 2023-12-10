class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activities = Activity.new
  end

  def create
    Activity.create(activity_params)
    redirect_to '/'
  end
end

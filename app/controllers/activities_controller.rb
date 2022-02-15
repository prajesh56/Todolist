class ActivitiesController < ApplicationController
  def index
    #binding.pry
    @activities =Activity.all
  end
  def new
    @activities = Activity.new
  end

  def create
    @activities = Activity.new(activity_params)
    if @activities.save
      redirect_to @activities
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private
    def activity_params
      params.require(:Activity).permit(:task)
    end
end

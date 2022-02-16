class ActivitiesController < ApplicationController
  def index
    #binding.pry
    @activities =Activity.all
  end

  def show
    @activities = Activity.find(params[:id])
  end

  def new
    @activities = Activity.new
  end

  def create
    @activities = Activity.new(activity_params)
    if @activities.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  def destroy
    activities = Activity.find(params[:id])
    activities.destroy
    redirect_to root_path
  end
  
  private
    def activity_params
      params.require(:Activity).permit(:task)
    end
end

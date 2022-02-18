class ActivitiesController < ApplicationController
  def index
    #binding.pry
    @activities =Activity.all
    #@new_Activity=Activity.new
  end

  def show
    @activities = Activity.find(params[:id])
  end

  def new
    @activities = Activity.new
  end

  def edit
    @activities = Activity.find(params[:id])
  end

  def update
    @activities = Activity.find(params[:id])
    
    if @activities.update(activity_params)
      redirect_to activities_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    
    @activities = Activity.new(activity_params)
    if @activities.save
      redirect_to activities_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  def destroy
    activities = Activity.find(params[:id])
    activities.destroy
    redirect_to activities_path
  end
  
  private
    def activity_params
      params.require(:activity).permit(:task)
    end
end

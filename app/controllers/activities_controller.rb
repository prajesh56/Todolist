class ActivitiesController < ApplicationController
  def index
    #binding.pry
    @activities =Activity.all
  end
  def create
    
  end
end

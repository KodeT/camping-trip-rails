require 'pry'
class CampersController < ApplicationController

  def index
    if params[:campsite_id]
      @campsite = Campsite.find(params[:campsite_id])
      @campers = @campsite.campers
      @title = "Campers bunking in #{@campsite.name}"

    else
      @title = "All Campers:"
      @campers = Camper.all

    end
  end


end

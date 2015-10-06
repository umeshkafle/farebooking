class SearchController < ApplicationController
  def show
  	search_query = params[:search][:destination]
  	@results = Fare.where("destination like?", "%#{search_query}%")
  end
end

class BasicSearchesController < ApplicationController
  # GET /basic_searches
  # GET /basic_searches.json
  def index
    @search = Login.search(params[:q])
    @searches = @search.result
    @search.build_condition if @search.conditions.empty?
  end
end
class SearchesController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    @search = User.search(params[:q])
    @searches = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end
end
# http://www.sitepoint.com/advanced-search-ransack/
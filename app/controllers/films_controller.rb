class FilmsController < ApplicationController
  before_action :find_category, only: %i(index)

  def index
    @films = Film.create_at_desc.category_films params[:category]
  end

  private

  def find_category
    @category = Category.find_by params[:category]

    return if @category
    flash[:danger] = t ".not_found_category" 
    redirect_to root_path
  end
end

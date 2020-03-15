class StaticPagesController < ApplicationController
  def home
    @categories = Category.select(Category::SELECT_CATEGORY)
    @films = Film.select(Film::SELECT_FILM_HOME)
  end
end

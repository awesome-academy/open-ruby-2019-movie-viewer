class StaticPagesController < ApplicationController
  def home
    @categories = Category.select(Category::SELECT_CATEGORY).last Settings.category_home
    @films = Film.select(Film::SELECT_FILM_HOME)
  end
end

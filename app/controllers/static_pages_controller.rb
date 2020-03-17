class StaticPagesController < ApplicationController
  def home
    @categories = Category.select(Category::SELECT_CATEGORY)
    @films = Film.select(Film::SELECT_FILM_HOME)
    @films_action = Film.create_at_desc.action_films.limit Settings.limit_films
    @films_romance = Film.create_at_desc.romance_films.limit Settings.limit_films
    @cartoon = Film.create_at_desc.cartoon.limit Settings.limit_films
  end
end

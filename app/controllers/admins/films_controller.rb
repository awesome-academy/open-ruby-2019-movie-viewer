class Admins::FilmsController < ApplicationController
  def index
    @films = Film.create_at_desc
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new films_params

    if @film.save
      flash[:success] = t ".success"
      redirect_to admins_films_path
    else
      flash[:danger] =  t ".error"
      render :new
    end
  end

  private

  def films_params
    params.require(:film).permit Film::FILM_PARAMS
  end
end

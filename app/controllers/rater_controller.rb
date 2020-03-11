class RaterController < ApplicationController
  before_action :load_film, only: :create

  def create
    if user_signed_in?
      obj = params[:klass].classify.constantize.find(params[:id])
      obj.rate params[:score].to_f, current_user, params[:dimension]

      render :json => true
    else
      render :json => false
    end
  end

  private

  def load_film
    @film = Film.find_by id: params[:id]

    return if @film
    flash[:danger] = t ".not_found"
    redirect_to root_path
  end
end

class Admins::UsersController < Admins::BaseController
  before_action :find_user, only: %i(destroy)

  def index
    @users = User.user
  end

  def destroy
    @user.destroy
    
    if @user.destroyed?
      flash[:success] = t ".success_destroy_user"
      redirect_to request.referrer
    else
      flash[:danger] = t ".danger_destroy_user"
      redirect_to request.referrer
    end
  end

  private

  def find_user
    @user = User.find_by id: params[:id]
    redirect_to root_path unless @user
  end
end

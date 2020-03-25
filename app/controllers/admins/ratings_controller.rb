class Admins::RatingsController < ApplicationController
  def index
    @ratings = Rating.create_at_desc
  end
end

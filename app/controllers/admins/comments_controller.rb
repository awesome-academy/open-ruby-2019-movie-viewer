class Admins::CommentsController < ApplicationController
  def index
    @comments = Comment.order_comment
  end
end

class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(user: current_user, game_id: params[:game_id], comment: params[:comment][:comment])
    if @comment.save
      redirect_to game_path(@comment.game)
    else
      render :new
    end
  end
end

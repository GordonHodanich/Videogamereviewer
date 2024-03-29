class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

private

  def game_params
    params.require(:game).permit(:title, :description, :rank, :photo)
  end
end

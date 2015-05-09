class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def tasks
    @board = Board.find(params[:id])
  end

  def top
    @board = Board.all.sort do |b|
      b.tasks.count
    end.last
  end

  private
  def board_params
    params.require(:board).permit(:name, :user_id)
  end
end

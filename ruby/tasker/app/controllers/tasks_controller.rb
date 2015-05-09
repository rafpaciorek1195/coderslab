class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_board_path(@task.board.id)
    else
      render :new
    end
  end


  private
  def task_params
    params.require(:task).permit(:title, :description, :board_id, :archived, :assigner_id)
  end
end

class Api::TasksController < ApplicationController
  before_action :set_task, only: [:destroy, :done]

  def index
    render json: Task.all
  end

  def create
    task = Task.new task_params
    task.save
    render json: task, status: 200
  end

  def destroy
    @task.destroy
    render json: @task, status: 200
  end

  def done
    @task.done!
    render json: @task, status: 200
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :priority, :end_on, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

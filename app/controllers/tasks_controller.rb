class TasksController < ApplicationController
  #  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
      @task = task.find(params[:id])
      @task.update(params[:task])
      redirect_to task_path(@task)
    # @restaurant.update(params[:restaurant])
  end

  def destroy
    @task = task.find(params[:id])
    @task.destroy
    redirect_to task_path(@task)
  end

  private

  # def set_task
  #   @task = task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:title, :detail, :completed)
  end



end

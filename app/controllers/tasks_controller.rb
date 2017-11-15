class TasksController < ApplicationController

    before_action :set_list, only: [:new, :create ]
    before_action :set_task, only: [:show,:edit, :update, :destroy ]


    def show
    end

    def new
      @task = Task.new
    end

    def create
      @task = @list.tasks.build(task_params)

      if @task.save
        redirect_to [@list]
      else
        flash.now[:alert] = "There was an error saving the task. Please Try again."
        render :new
      end
    end

    def edit
    end

    def update
      @task.assign_attributes(task_params)

      if @task.save
        redirect_to [@task.list, @task]
      else
        flash.now[:alert] = "There was an error saving the task. Please try again."
        render :edit
      end
    end

    def destroy

      if @task.destroy
        redirect_to @task.list
      else
        flash.now[:alert] = "There was an error deleting the task."
        render :show
      end
    end


    private

    def task_params
      params.require(:task).permit(:description, :notes)
    end

    def set_list
      @list = List.find(params[:list_id])
    end

    def set_task
      @task = Task.find(params[:id])
    end
end

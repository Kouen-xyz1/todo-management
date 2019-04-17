class HomeController < ApplicationController
  def index
    @task_lists = TaskList.where(user_id: current_user.id)
  end
  
  def new
  end
  
  def create
    TaskList.create(
      user_id: current_user.id,
      status: params[:status],
      todo: params[:todo],
      memo: params[:memo],
      priority: params[:priority],
      context: params[:context],
      start: params[:start],
      end: params[:end],
      budget_h: params[:budget_h],
      result_h: params[:result_h],
      budget_p: params[:budget_p],
      result_p: params[:result_p]
      )
    redirect_to action: :index and return
  end
  
  def update
    @task_lists = TaskList.find_by(id: params[:id])
    redirect_to :home_index_path and return unless @task_lists
    @task_lists.update(task_lists_params)
    redirect_to action: :index and return
  end
end

class HomeController < ApplicationController
  def index
    @task_lists = TaskList.where(user_id: current_user.id)
  end
end

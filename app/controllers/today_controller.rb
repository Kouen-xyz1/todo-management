class TodayController < ApplicationController
  def index
    @task_lists = TaskList.where(user_id: current_user.id).where('start < ?', Time.current).where('end > ?', Time.current)
  end
end

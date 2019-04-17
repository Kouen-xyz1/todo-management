class TaskList < ApplicationRecord
  enum status: {waiting: 1, working: 2, on_going: 3, pending: 4, complete: 5}
  enum context: {am: 1, pm1: 2, pm2: 3, night: 4, mid_night: 5}

  def progress
    (self.result_p.to_f/self.budget_p*100).to_i
  end
end

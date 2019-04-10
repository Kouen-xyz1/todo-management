class TaskList < ApplicationRecord
  def progress
    (self.result_p.to_f/self.budget_p*100).to_i
  end
end

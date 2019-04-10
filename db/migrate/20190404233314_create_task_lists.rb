class CreateTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :task_lists do |t|
      t.integer :user_id
      t.integer :status
      t.string :todo
      t.string :memo
      t.string :priority
      t.integer :context
      t.date :start
      t.date :end
      t.float :budget_h
      t.float :result_h
      t.integer :budget_p
      t.integer :result_p

      t.timestamps
    end
  end
end

require "csv"

CSV.foreach('db/initial_task_list.csv') do |row|
  unless TaskList.find_by(id: row[0])
    TaskList.create(
      id: row[0],
      user_id: row[1],
      status: row[2],
      todo: row[3],
      memo: row[4],
      priority: row[5],
      context: row[6],
      start: row[7],
      end: row[8],
      budget_h: row[9],
      result_h: row[10],
      budget_p: row[11],
      result_p: row[12]
      )
  end
end
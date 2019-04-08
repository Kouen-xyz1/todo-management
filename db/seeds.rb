require "csv"

CSV.foreach('db/initial_task_list.csv') do |row|
  unless TaskList.find_by(id: row[0])
    TaskList.create(
      id: row[0],
      status: row[1],
      todo: row[2],
      memo: row[3],
      priority: row[4],
      context: row[5],
      start: row[6],
      end: row[7],
      budget_h: row[8],
      result_h: row[9],
      budget_p: row[10],
      result_p: row[11]
      )
  end
end
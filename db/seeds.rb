require "csv"

CSV.foreach('db/initial_task_list.csv') do |row|
  unless TaskList.find_by(id: row[0])
    TaskList.create(
      id: row[0],
      name: row[1]
      )
  end
end
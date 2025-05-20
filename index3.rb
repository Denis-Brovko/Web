class TodoList
  def initialize
    @tasks = []
    run
  end

  def display_menu
    puts "\nTodo List Manager"
    puts "1. Add Task"
    puts "2. Show Tasks"
    puts "3. Delete Task"
    puts "4. Exit"
    print "Choose an option: "
  end

  def add_task
    print "Enter new task: "
    task = gets.chomp
    @tasks << task
    puts "Task added!"
  end

  def show_tasks
    if @tasks.empty?
      puts "No tasks in the list."
    else
      puts "\nCurrent Tasks:"
      @tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end
  end

  def delete_task
    show_tasks
    unless @tasks.empty?
      print "Enter task number to delete: "
      task_num = gets.chomp.to_i
      if task_num.between?(1, @tasks.size)
        deleted_task = @tasks.delete_at(task_num - 1)
        puts "Deleted task: #{deleted_task}"
      else
        puts "Invalid task number!"
      end
    end
  end

  def run
    loop do
      display_menu
      choice = gets.chomp.to_i

      case choice
      when 1 then add_task
      when 2 then show_tasks
      when 3 then delete_task
      when 4
        puts "Goodbye!"
        break
      else
        puts "Invalid option, please try again."
      end
    end
  end
end

TodoList.new
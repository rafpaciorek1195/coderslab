module TasksHelper
  def boards_to_select_for_tasks
    Board.all.collect { |b| [b.name, b.id] }
  end

  def users_to_select_for_tasks
    User.all.collect { |u| [u.first_name + ' ' + u.last_name, u.id] }
  end
end

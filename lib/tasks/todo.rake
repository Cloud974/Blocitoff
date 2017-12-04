namespace :todo do
  desc "Mark items that are due soon or overdue"
  task mark_items: :environment do
    Task.where(:duedate, Time.now)
  end

end

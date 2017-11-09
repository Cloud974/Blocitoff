class ModifyTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :list_id,  :integer
    add_index :tasks, :list_id
    remove_index :tasks, :user_id
    remove_column :tasks, :user_id
  end
end

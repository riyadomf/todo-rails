class AddPriorityToTodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :priority, :string
  end
end

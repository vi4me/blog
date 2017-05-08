class AddRoleIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :string
    add_column :users, :references, :string
  end
end

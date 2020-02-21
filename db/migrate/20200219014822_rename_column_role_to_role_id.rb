class RenameColumnRoleToRoleId < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :users_teams, :role, :roles_table_id
  end

  def self.down
    rename_column :users_teams, :roles_table_id, :role
  end
end

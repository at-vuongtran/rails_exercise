class RenameTableRole < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :roles, :users_teams
  end

  def self.down
    rename_table :users_teams, :roles
  end
end

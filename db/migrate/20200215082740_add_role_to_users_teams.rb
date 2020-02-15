class AddRoleToUsersTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :users_teams, :role, :integer
  end
end

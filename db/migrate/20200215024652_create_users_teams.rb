class CreateUsersTeams < ActiveRecord::Migration[6.0]
  def up 
    create_table :users_teams do |t|
      t.integer :team_id
      t.integer :user_id
    
      t.timestamps
    end    
    add_index :users_teams, :team_id
    add_index :users_teams, :user_id
    add_index :users_teams, [:team_id, :user_id], unique: true
  end

  def down 
    drop_table :users_teams
  end
end

class CreateUsersTeams < ActiveRecord::Migration[6.0]
  def up 
    create_table :users_teams do |t|
      t.references :teams, foreign_key: true
      t.references :users, foreign_key: true
    
      t.timestamps
    end    
  end
  
  def down 
    drop_table :users_teams
  end
end

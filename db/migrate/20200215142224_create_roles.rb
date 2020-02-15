class CreateRoles < ActiveRecord::Migration[6.0]
  def up 
    create_table :roles do |t|
      t.belongs_to :team_id, class_name: :teams
      t.belongs_to :user_id, class_name: :users
      t.integer :role

      t.timestamps
    end    
    add_index :roles, :team_id
    add_index :roles, :user_id
    add_index :roles, [:team_id, :user_id], unique: true
  end

  def down 
    drop_table :roles
  end
end

class CreateRoles < ActiveRecord::Migration[6.0]
  def up 
    create_table :roles do |t|
      t.belongs_to :team, class_name: :teams
      t.belongs_to :user, class_name: :users
      t.integer :role

      t.timestamps
    end    
  end

  def down 
    drop_table :roles
  end
end

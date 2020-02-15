class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password, null: false
      t.integer :team_id

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end

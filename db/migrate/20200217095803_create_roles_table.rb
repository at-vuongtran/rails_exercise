class CreateRolesTable < ActiveRecord::Migration[6.0]
  def up
    create_table :roles_tables do |t|
      t.string :name, null: false

      t.timestamps
    end
  end

  def down
    drop_table :roles_tables
  end
end

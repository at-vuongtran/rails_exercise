class CreateTeams < ActiveRecord::Migration[6.0]
  def up
    create_table :teams do |t|
      t.string :name
      t.belongs_to :lead, class_name: :users
      t.belongs_to :sublead, class_name: :users

      t.timestamps
    end
  end

  def down
    drop_table :teams
  end
end

class CreateReference < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :users_teams, :roles_tables, column: :roles_table_id, primary_key: "id"
  end
end

class DeleteColumeSubleadAndLeadTableTeam < ActiveRecord::Migration[6.0]
  def up
    remove_column :teams, :lead_id
    remove_column :teams, :sublead_id
  end

  def down
    add_column :teams, lead_id, integer
    add_column :teams, sublead_id, integer
  end
end

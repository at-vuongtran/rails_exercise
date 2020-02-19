class UsersTeam < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :team, class_name: "Team"
  belongs_to :roles_table
  validates :user_id, presence: true
  validates :team_id, presence: true
  # after_update :update_table_team

  # private
  #   def update_table_team
  #     if role == 1 
  #       Team.find(team_id).update(lead_id: user_id)
  #       tmp = self.where(team_id: team_id, role: role)
  #       tmp.each { |item| item.update(role: 0) if item.id != id }
  #     elsif role == 2
  #       Team.find(team_id).update(sublead_id: user_id)
  #       tmp = self.where(team_id: team_id, role: role)
  #       tmp.each { |item| item.update(role: 0) if item.id != id }
  #     else
  #       team = Team.find(team_id)
  #       if team.sublead_id == user_id
  #         team.update(sublead_id: nil)
  #       elsif team.lead_id == user_id
  #         team.update(lead_id: nil)
  #       else
  #       end
  #     end
  #     puts "aaassas"
  #   end

  scope :leader, -> {
    where(:roles_table_id => RolesTable.leader)
  }
end

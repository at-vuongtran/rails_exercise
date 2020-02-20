class UsersTeam < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :team, class_name: "Team"
  belongs_to :roles_table
  validates :user_id, presence: true
  validates :team_id, presence: true

  scope :leader, -> {
    where(:roles_table_id => RolesTable.leader)
  }

  scope :sub_leader, -> {
    where(:roles_table_id => RolesTable.sub_leader)
  }

  scope :members, -> {
    where(:roles_table_id => RolesTable.member)
  }
end

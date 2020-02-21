class Team < ApplicationRecord
  has_many :users_teams, class_name:  "UsersTeam", foreign_key: "team_id", dependent: :destroy
  has_many :users, through: :users_teams
  has_one :users_teams_leader,-> { leader }, class_name: UsersTeam.name, foreign_key: "team_id"
  has_one :leader, through: :users_teams_leader, source: :user
  has_one :users_teams_sub_leader,-> { sub_leader }, class_name: UsersTeam.name, foreign_key: "team_id"
  has_one :sub_leader, through: :users_teams_sub_leader, source: :user
  has_many :users_teams_members,-> { members }, class_name: UsersTeam.name, foreign_key: "team_id"
  has_many :members, through: :users_teams_members, source: :user
end

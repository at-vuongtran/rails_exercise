class Team < ApplicationRecord
  has_many :users_teams, class_name:  "UsersTeam", foreign_key: "team_id", dependent: :destroy
  has_many :users, through: :users_teams
  has_one :users_teams_leader,-> { leader }, class_name: UsersTeam.name, foreign_key: "team_id"
  has_one :leader, through: :users_teams_leader, source: :user
end

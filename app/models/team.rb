class Team < ApplicationRecord
  has_many :users_teams, class_name:  "UsersTeam", foreign_key: "team_id", dependent: :destroy
  has_many :users, through: :users_teams
end

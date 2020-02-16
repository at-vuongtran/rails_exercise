class Team < ApplicationRecord
  has_many :users_teams, class_name:  "User_Team", foreign_key: "team_id", dependent: :destroy
end

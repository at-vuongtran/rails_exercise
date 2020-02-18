class User < ApplicationRecord
  has_many :users_teams, class_name:  "UsersTeam", foreign_key: "user_id", dependent: :destroy
  has_many :teams, through: :users_teams
  has_many :articles, foreign_key: "user_id", dependent: :destroy
end

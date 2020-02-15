class User < ApplicationRecord
	has_many :users_teams, class_name:  "User_Team", foreign_key: "user_id", dependent:   :destroy
	has_many :roling, through: :users_teams, source: :role
end

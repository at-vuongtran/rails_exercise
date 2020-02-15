class User_Team < ApplicationRecord
	belongs_to :user_id, class_name: "User"
	belongs_to :team_id, class_name: "Team"
	validates :user_id, presence: true
  validates :team_id, presence: true
end
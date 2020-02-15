class Team < ApplicationRecord
	has_many :roles, class_name:  "Role", foreign_key: "team_id", dependent:   :destroy
end

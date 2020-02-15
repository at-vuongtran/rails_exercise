class User < ApplicationRecord
	has_many :roles, class_name:  "Role", foreign_key: "user_id", dependent:   :destroy
	has_many :role, through: :roles, source: :role
end

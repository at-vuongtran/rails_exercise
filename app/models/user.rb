class User < ApplicationRecord
  has_many :users_teams, class_name:  "UsersTeam", foreign_key: "user_id", dependent: :destroy
  has_many :teams, through: :users_teams
  has_many :articles, foreign_key: "user_id", dependent: :destroy
  has_many :leaders, through: :teams, source: :leader
  has_many :sub_leaders, through: :teams, source: :sub_leader
  
  #get all member from a lead
  has_many :users_teams_leader_teams, -> { leader }, class_name: UsersTeam.name, foreign_key: "user_id"
  has_many :teams_leads, through: :users_teams_leader_teams, source: :team
  has_many :lead_get_members, through: :teams_leads, source: :members

  #get all member from a sub_lead
  has_one :users_teams_sub_leader_team, -> { sub_leader }, class_name: UsersTeam.name, foreign_key: "user_id"
  has_one :teams_sub_lead, through: :users_teams_sub_leader_team, source: :team
  has_many :sub_lead_get_members, through: :teams_sub_lead, source: :members

  #sub_lead review all article of members
  has_many :reviews, through: :sub_lead_get_members, source: :articles

  scope :leads -> {
    where(:teams_sub_lead != [])
  }
end

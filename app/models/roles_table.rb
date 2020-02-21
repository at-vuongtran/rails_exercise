class RolesTable < ApplicationRecord
  LEADER     = 'Leader'.freeze
  SUB_LEADER = 'Sub-Leader'.freeze
  MEMBER     = 'Member'.freeze 
  
  has_many :users_teams

  def self.leader #bang methods
    RolesTable.find_by!(name: LEADER)
  end

  def self.sub_leader
    RolesTable.find_by!(name: SUB_LEADER)
  end

  def self.member
    RolesTable.find_by!(name: MEMBER)
  end
end

class Users::SubLeadersController < ApplicationController
  
  def index
    @role_sub_leader = RolesTable.find_by(name: "Sub-Leader").id
    @sub_leaders = UsersTeam.includes(:user, :team).where(role: @role_sub_leader)
  end

  def show
    @role_sub_leader = RolesTable.find_by(name: "Sub-Leader").id
    @sub_leader = (UsersTeam.includes(:user, :team).where(role: @role_sub_leader)).find { |item| item.user.id == params[:id].to_i }
    @sub_leader_id = @sub_leader.user_id
    @sub_leader_name = @sub_leader.user.name
    @sub_leader_email = @sub_leader.user.email
    @sub_leader_team = @sub_leader.team.name 
  end

  def members
    @role_sub_leader = RolesTable.find_by(name: "Sub-Leader").id
    @team = UsersTeam.find_by(user_id: params[:id], role: @role_sub_leader)
  end
end

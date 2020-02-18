class Users::LeadersController < ApplicationController
  
  def index
    role_leader = RolesTable.find_by(name: "Leader").id
    @leaders = UsersTeam.includes(:user, :team).where(role: role_leader)
  end

  def show
    role_leader = RolesTable.find_by(name: "Leader").id
    @leaders = (UsersTeam.includes(:user, :team).where(role: role_leader)).select { |item| item.user.id == params[:id].to_i }
    @leader_id = @leaders[0].user_id
    @leader_name = @leaders[0].user.name
    @leader_email = @leaders[0].user.email
    @leader_teams = @leaders.map { |item| item.team.name }
  end

  def members
    role_leader = RolesTable.find_by(name: "Leader").id
    @teams = UsersTeam.where(user_id: params[:id], role: role_leader)
  end
end

class Users::SubLeadersController < ApplicationController
  def index
    @sub_leaders = Role.includes(:user, :team).where(role: 2)
  end

  def show
    @sub_leader = (Role.includes(:user, :team).where(role: 2)).find { |item| item.user.id == params[:id].to_i }
    @sub_leader_id = @sub_leader.user_id
    @sub_leader_name = @sub_leader.user.name
    @sub_leader_email = @sub_leader.user.email
    @sub_leader_team = @sub_leader.team.name 
  end
end

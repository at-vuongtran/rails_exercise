class Users::LeadersController < ApplicationController
  def index
    @leaders = Role.includes(:user, :team).where(role: 1)
  end

  def show
    @leaders = (Role.includes(:user, :team).where(role: 1)).select { |item| item.user.id == params[:id].to_i }
    @leader_id = @leaders[0].user_id
    @leader_name = @leaders[0].user.name
    @leader_email = @leaders[0].user.email
    @leader_teams = @leaders.map { |item| item.team.name }
  end
end

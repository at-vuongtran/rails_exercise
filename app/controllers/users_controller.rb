class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def leaders
    @leaders = UsersTeam.includes(:team).leader.map{ |lead| lead.user }.uniq!
  end

  def sub_leaders
    @sub_leaders = UsersTeam.includes(:team).sub_leader.map{ |sub_lead| sub_lead.user }
  end
end

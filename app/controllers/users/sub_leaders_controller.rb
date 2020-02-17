class Users::SubLeadersController < ApplicationController
  def index
    @sub_leaders = Role.includes(:user, :team).where(role: 2)
  end

  def show
    @sub_leader = (Role.includes(:user, :team).where(role: 2)).select { |item| item.user.id == params[:id] }
  end
end

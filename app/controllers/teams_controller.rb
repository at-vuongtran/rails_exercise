class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:users, :users_teams).all
  end
  
  def show
    @team = Team.includes(:users, :users_teams).find(params[:id])
  end

  def members
    @team = Team.includes(:users, :users_teams).find(params[:id])
  end
end
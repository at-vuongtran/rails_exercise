class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
    role_lead = RolesTable.find_by(name: "Leader").id
    role_sub_lead = RolesTable.find_by(name: "Sub-Leader").id
    @leader = UsersTeam.find_by(team_id: @team.id, role: role_lead)
    @sub_leader = UsersTeam.find_by(team_id: @team.id, role: role_sub_lead)
  end
end
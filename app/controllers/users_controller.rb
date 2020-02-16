class UsersController <ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def leader
		@leaders = Role.includes(:user, :team).where(role: 1)
	end
end
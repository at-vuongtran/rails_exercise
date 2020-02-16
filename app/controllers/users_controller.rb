class UsersController <ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def leaders
		@leaders = Role.includes(:user, :team).where(role: 1)
	end

	def sub_leaders
		@sub_leaders = Role.includes(:user, :team).where(role: 2)
	end
end
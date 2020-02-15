class UsersController <ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def self.leaders
		@user = User.all
	end
end
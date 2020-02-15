class UsersController <ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def leader
		tmp = User.all
		tmp2 = []
		tmp.each { |i| tmp2.concat(i.roles) }
		@users = tmp2.select { |i| i.role == 1 }
	end
end
class UsersController < ApplicationController
	def get
		users = User.all
		render json: users
	end

	def show
		user = User.find_by id: params[:id]
		
		# INTENTEN NO HACER RENDER EN VARIOS LUGARES
		# if user
		# 	render json: user	
		# else
		# 	render json: {error: 'blah'}
		# end
		
		unless user
			user = {error: 'blah'}
		end
		render json: user
	end

	def create
		user = User.new
		#FALTA!
	end
end

class RecruitersController < ApplicationController

	before_action :set_recruiter, only: [:show, :edit, :update, :destroy]

	def index
		@recruiters = Recruiter.all
	end

	def show
	end

	def new
		@recruiter = Recruiter.new
	end

	def edit
	end

	def update

		if @recruiter.update(recruiter_params)
			redirect_to(@recruiter)
		else
			render :edit
		end
	end

	def destroy
		@recruiter.destroy

		redirect_to(recruiters_path)
	end

	def create
		#recruiter_params = params[:recruiter]
		#@recruiter = Recruiter.new(recruiter_params)

		@recruiter = Recruiter.new(recruiter_params)

		if @recruiter.save
			redirect_to(@recruiter) # 302 (response) redirect
		else
			render :new
		end

		#binding.pry
	end

	private

		def set_recruiter
			@recruiter = Recruiter.find params[:id]
		end

		def recruiter_params
			params.require(:recruiter).permit(:first_name, :last_name, :email, :current_position)
		end



end

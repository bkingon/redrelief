class NeedsController < ApplicationController
	load_and_authorize_resource #:nested => :project
	def index
		@need = Need.all
	end

	def new
		@need = Need.new
	end

	def create
		@need = Need.new(params[:need])
		@need.project_id = params[:project_id]
    	if @need.save
      		redirect_to @need.project
	    else
	      render action: :new
	    end
	end

	def destroy
		need = Need.find(params[:id])
		need.destroy
		redirect_to	@need.project
	end

	def update
		@need.update_attributes(params[:need])
		redirect_to @need.project
	end

	def edit

	end
end

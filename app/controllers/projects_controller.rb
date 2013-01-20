class ProjectsController < ApplicationController
	load_and_authorize_resource

	def index
		@project = Project.all
	end

	def new
		@project = Project.new
	end

	def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_url
    else
      render action: :new
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to projects_url
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to projects_url
    else
      render action: :edit
    end    
  end

  def show
  	@project = Project.find(params[:id])
  end
end

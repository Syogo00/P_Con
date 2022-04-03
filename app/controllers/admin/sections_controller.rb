class Admin::SectionsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @sections = Section.all
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    @section.save
    redirect_to admin_sections_path
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.update(section_params)
    redirect_to admin_sections_path
  end

  private

  def section_params
    params.require(:section).permit(:section_name)
  end

end

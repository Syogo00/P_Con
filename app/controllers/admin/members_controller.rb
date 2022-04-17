class Admin::MembersController < ApplicationController
  before_action :authenticate_admin!

  def index
    type = params[:type] || Section.ids
    @member = Member.where(section_id: type).search(params[:search])
    @sections = Section.all
  end

  def show
    @member = Member.find(params[:id])
    @condition = @member.condition.limit(1).order(created_at: :desc)
  end

  def graph
    @member = Member.find(params[:id])
    @conditions = @member.condition
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    redirect_to admin_member_path(@member.id)
  end

  private

  def member_params
    params.require(:member).permit(:section_id)
  end
end

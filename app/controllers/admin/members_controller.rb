class Admin::MembersController < ApplicationController
  def index
    @member = Member.all.search(params[:search])
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
end

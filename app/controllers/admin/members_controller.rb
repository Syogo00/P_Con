class Admin::MembersController < ApplicationController
  def index
    @member = Member.all.search(params[:search])
    @sections = Section.all
  end

  def show
    @member = Member.find(params[:id])
  end
end

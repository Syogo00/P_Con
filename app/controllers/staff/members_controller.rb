class Staff::MembersController < ApplicationController
  def top
    @member = current_member
  end

  def edit
    @member = Member.find(current_member.id)
  end

  def update
    @member = Member.find(current_member.id)
  end

  def show
  end

  def index
  end
end

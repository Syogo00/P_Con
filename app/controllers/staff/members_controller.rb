class Staff::MembersController < ApplicationController

  before_action :authenticate_member!

  def top
    @member = current_member
  end

  def edit
    @member = Member.find(current_member.id)
  end
  
  

  def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
      redirect_to my_page_path
    else
      render :edit
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def index
    @member = Member.all.search(params[:search])
    @sections = Section.all
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :birth_year, :birth_month, :birth_day, :phone_number, :address, :email)
  end

end

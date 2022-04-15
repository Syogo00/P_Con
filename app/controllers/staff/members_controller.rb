class Staff::MembersController < ApplicationController

  before_action :authenticate_member!

  def top
    @member = current_member
    @condition = @member.condition.limit(1).order(created_at: :desc)
  end

  def change
    @member = Member.find(current_member.id)
    @member.update(update_params)
    redirect_to my_page_path
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
    # if params[:type] == '1'
    #   @member = Member.where(section_id: 1)
    # elsif params[:type] == '2'
    #   @member = Member.where(section_id: 2)
    # else
    #   @member = Member.all.search(params[:search])
    # end
    type = params[:type] || Section.ids
    @member = Member.where(section_id: type).search(params[:search])
    @sections = Section.all
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :birth_year, :birth_month, :birth_day, :phone_number, :address, :email, :section_id, :attendance_status)
  end

  def update_params
    params.require(:member).permit(:attendance_status)
  end

end

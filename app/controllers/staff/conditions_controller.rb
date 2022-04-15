class Staff::ConditionsController < ApplicationController

  before_action :authenticate_member!

  def new
    @condition = Condition.new
  end

  def create
    @condition = Condition.new(condition_params)
    @condition.member_id = current_member.id
    # pp @condition, current_member,"test", "hoge"
    if @condition.save
      redirect_to condition_path(@condition.id)
    else
      render :new
    end
  end

  def show
    @condition = Condition.find(params[:id])
  end

  def destroy
    @condition = Condition.find(params[:id])
    @condition.member.id = current_member.id
    @condition.destroy
    redirect_to conditions_path
  end

  def index
    @conditions = current_member.condition
    pp @conditions
  end

  def graph
    @conditions = current_member.condition
  end

  private

  def condition_params
    params.require(:condition).permit(:member_id, :temperature, :status, :explation)
  end

end

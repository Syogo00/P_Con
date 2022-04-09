class Admin::HomesController < ApplicationController
  
  before_action :authenticate_admin!
  
  def top
    @condition = Condition.order(created_at: :desc).limit(10)
  end
end

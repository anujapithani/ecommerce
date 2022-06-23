class AdminsController < ApplicationController
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:notice]="Signup successful"
    else
      Rails.logger.info @admin.errors.full_messages
      flash[:notice]= @admin.errors.full_messages
      redirect_to '/signup'
    end
  end

  def new
    @admin = Admin.new
  end

  def index
  end
  private
    def admin_params
      params.require(:admin).permit(:admin_name, :email, :password)
    end
end

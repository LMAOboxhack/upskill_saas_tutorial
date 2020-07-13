class UsersController < ApplicationController
  before_action :authenticate_user!
  
  # GET - /users/:id
  def show
    @user = User.find(params[:id])
  end
  
  # GET - /users
  def index
    @users = User.where.not(id: current_user.id).includes(:profile)
  end
  
end
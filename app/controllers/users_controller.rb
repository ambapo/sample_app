class UsersController < ApplicationController
	before_filter :signed_in_user, only: [:index, :edit, :update]

	def index
		@users = User.paginate(page: params[:page])
	end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user= User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App"
  		redirect_to @user
  		#Handle a successful save
  	else
  		render 'new'
  	end
  end

  def destroy
  	User.find(params[:id]).destroy
  	flash[:success] = "User destroyed."
  	redirect_to users_url
  end

  def edit
  	@user = User.find(params[:id])
  end
  end

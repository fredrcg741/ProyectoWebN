class UsersController < ApplicationController
  require 'digest/md5'

  def index
  end

  def show
    if !logged_in?
      redirect_to root_path
    end

    @users = User.all
  end

  def new
    if !logged_in?
      redirect_to root_path
    end

    @user = User.new
  end

  def create
    if !logged_in?
      redirect_to root_path
    end

    @user = User.create(user_params)
    @user.clave = Digest::MD5.hexdigest(@user.clave)
    
    if @user.save
      redirect_to '/users/show'
    else
      redirect_to '/users/new'
    end
  end

  def edit
    if !logged_in?
      redirect_to root_path
    end

    @user = User.find(params[:id])
  end

  def update
    if !logged_in?
      redirect_to root_path
    end

    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to '/users/show'
    else
      redirect_to :action => :edit, :id => @user.id
    end
  end

  def delete
    if !logged_in?
      redirect_to root_path
    end

    @user = User.find(params[:id])
  end

  def destroy
    if !logged_in?
      redirect_to root_path
    end

    @user = User.find(params[:id])
    if @user.destroy
      redirect_to '/users/show'
    else
      redirect_to '/users/new'
    end
  end

	private
	# Only allow a list of trusted parameters through.
	def user_params
      params.require(:user).permit(:correo, :clave, :nombre, :apellido_paterno, :apellido_materno, :empresa_id, :estado, :nivel, :foto_dir)
	end
end

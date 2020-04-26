class LoginsController < ApplicationController
  require 'digest/md5'

  def index
  end

  def new_password
  end

  def login
    @user = User.find_by(correo: params[:correo], clave: Digest::MD5.hexdigest(params[:clave]))

    if @user
      session[:user_id] = @user.id
      redirect_to '/pages/index'
    else
      redirect_to root_path
    end

  end

  def logout
    reset_session
    if !logged_in?
      redirect_to root_path
    end
  end
end

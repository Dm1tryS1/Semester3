class SessionController < ApplicationController
  skip_before_action :authenticate, only: [:login, :create]
  def login
  end

  def create
    if user = User.authenticate(params[:name],params[:password])  
      sign_in(user)
      redirect_to session_acc_path
    else
      flash.now[:danger] = "Error"
      redirect_to session_login_path
    end
  end

  def logout
    redirect_to root_path
    sign_out
  end

  def acc 
  end
end

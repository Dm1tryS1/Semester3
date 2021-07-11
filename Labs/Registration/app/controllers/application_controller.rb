class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include SessionHelper

    before_action :authenticate, :except => [:signup, :signin, :new, :create, :index]

    private
    def authenticate
        unless current_user
          redirect_to session_login_path
        end
    end
end

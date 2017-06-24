class Api::UsersController < ApplicationController
  before_action :authenticate_user

  def texts
    render json: User.find_by_id(current_user[:id]).texts
  end
end

class UsersController < ApplicationController
  
  skip_before_action :authenticate_user!, only: [
    :styleguide
  ]

  def styleguide
  end

  def dashboard

  end

end

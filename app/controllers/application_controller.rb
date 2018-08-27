class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end


class AuthenticationController < ApplicationController
  # Turn off user authentication for all actions in this controller
  skip_before_action :authenticate_user!

  def login
    '...'
  end

  def register
    '...'
  end
end

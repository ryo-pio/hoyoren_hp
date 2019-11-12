class ApplicationController < ActionController::Base
  before_action :basic_auth

  def index
  end
end

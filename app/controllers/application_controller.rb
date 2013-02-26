class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  @comanyName = "SmartCoach"
  @companyUrl = "http://smartcoach.herokuapp.com/"
end

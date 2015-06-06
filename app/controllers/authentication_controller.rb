#created by Ryan and Andrew
#requires all users to login to view pages

class AuthenticationController < ApplicationController
  before_filter :authenticate_login!

end
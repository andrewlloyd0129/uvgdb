class User::DashboardController < ApplicationController
  
access user: {except: [:admin]}

  def profile
  
  end

  def admin

  end
  
end
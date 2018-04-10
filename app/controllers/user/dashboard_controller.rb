class User::DashboardController < ApplicationController
  
access admin: [:profile, :admin], user: {except: [:admin]}

  def profile
  
  end

  def admin

  end

end
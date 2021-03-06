class User::DashboardController < ApplicationController
  
access admin: [:profile, :admin], user: {except: [:admin]}

  def profile
    @usergamestatus = UserGameStatus.where(user_id: current_user.id)
    @games = Game.all

  end

  def admin
    @games = Game.draft
    @studios = Studio.draft
    @peoples = Person.draft
    @platforms = Platform.draft
    @characters = Character.draft
  end

end
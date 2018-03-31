class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  def favorite 
    thing = set_thing
    thing.liked_by current_user, :vote_scope => 'favorite'
    redirect_to thing
  end

  def unfavorite
    thing = set_thing
    thing.unliked_by current_user, :vote_scope => 'favorite'
    redirect_to thing
  end

  def like
    thing = set_thing
    thing.liked_by current_user, :vote_scope => 'liked'
    redirect_to thing
  end

  def unlike
    thing = set_thing
    thing.unliked_by current_user, :vote_scope => 'liked'
    redirect_to thing
  end

  def dislike
    thing = set_thing
    thing.disliked_by current_user, :vote_scope => 'liked'
    redirect_to thing
  end
  
  def undislike
    thing = set_thing
    thing.undisliked_by current_user, :vote_scope => 'liked'
    redirect_to thing
  end
end

module ApplicationHelper
  def active?(path)
  "active" if current_page?(path)
  end

  def image_generator(height:, width:)
	"http://via.placeholder.com/#{width}x#{height}"
  end

  def img img, type
    
    if img.model.has_attribute?(:main_image)
    	if img.model.main_image?
    		return img
      end 

    elsif img.model.has_attribute?(:image)
      if img.model.image?
        return img
      end 
    end
  	
    if type == 'thumb'
  		return image_generator(height: '100', width: '70')
  	elsif type == 'main'

  		return image_generator(height: '500', width: '350')
  	end
  end

  def header_generator
   if @game
     return @game.title
   elsif @character
     return @character.name
   elsif @platform
     return @platform.name
   elsif @people
     return @people.name
   elsif @studio
     return @studio.title
   elsif @games
     return 'Games'
   elsif @studios
     return 'Studios'
   elsif @characters
     return 'Characters'
   elsif @peoples
     return 'People'
   elsif @platforms
     return 'Platforms'
    elsif current_page?(root_path)
     return "Home"
    elsif current_page?(user_dashboard_profile_path)
     return current_user.email
    elsif current_page?(user_dashboard_admin_path)
     return "Welcome Admin Overlord!"
   else
     return "UVGDB"
   end
  end
end
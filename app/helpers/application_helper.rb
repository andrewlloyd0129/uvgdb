module ApplicationHelper
  def active?(path)
  "active" if current_page?(path)
  end

  def image_generator(height:, width:)
	"http://via.placeholder.com/#{width}x#{height}"
  end

  def img img, type
  	if img
  		img
  	elsif type == 'thumb'
  		image_generator(height: '100', width: '70')
  	elsif type == 'main'
  		image_generator(height: '500', width: '350')
  	end
  end
end

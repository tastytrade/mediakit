require 'pry'

def load_images
  Dir["source/images/media_photos/*"].map do |image| 
    "media_photos/#{File.basename(image)}"
  end
end

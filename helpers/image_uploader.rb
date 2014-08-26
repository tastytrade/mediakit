require 'pry'

def load_images
  Dir["source/images/*"].map { |image| File.basename(image) }
end

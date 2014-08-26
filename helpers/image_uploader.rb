require 'pry'

def load_images
  # binding.pry
  Dir["source/images/*"].map { |image| File.basename(image) }
end

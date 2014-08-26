require 'pry'

def load_images
  Dir["source/images/media_photos/full/*"].map do |full_image_name| 
    file_name = File.basename(full_image_name)
    ext = File.extname(full_image_name)
    file_without_ext = file_name.gsub(ext, "")
    file_name = "#{file_without_ext}@2x#{ext}"

    {
      :thumb => "/images/media_photos/thumbs/#{file_name}",
      :full => full_image_name.gsub("source/", ""),
      :file_name => file_without_ext
    }
  end
end

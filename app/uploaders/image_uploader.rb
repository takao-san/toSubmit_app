class ImageUploader < CarrierWave::Uploader::Base

  def default_url
    'kirin-piyotaso.png'
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end

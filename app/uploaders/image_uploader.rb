class ImageUploader < CarrierWave::Uploader::Base
  # :fileから:fogへ変更
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def size_range
    1..10.megabytes
  end
end
# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :fog


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  # version :large do
  #   resize_to_fit(264, 284)
  # end
  #
  # version :medium do
  #   resize_to_fit(180, 180)
  # end
  #
  # version :thumb do
  #   resize_to_fit(80, 80)
  # end

  # File Type White List
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end

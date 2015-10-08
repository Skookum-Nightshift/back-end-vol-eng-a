# encoding: utf-8
require 'carrierwave/processing/mime_types'

class FileUploader < CarrierWave::Uploader::Base
  include CarrierWave::MimeTypes

  storage :fog

  process :set_content_type
  process :save_content_type_and_size_in_model

  def save_content_type_and_size_in_model
    if model.has_attribute?(:content_type) && model.has_attribute?(:file_size)
      model.content_type = file.content_type if file.content_type
      model.file_size = file.size
    end
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end

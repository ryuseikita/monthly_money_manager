class ServiceIconUploader < CarrierWave::Uploader::Base
  if Rails.env.development?
    storage :fog
  elsif Rails.env.test?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "service_icon_uploads/#{model.class.to_s.underscore}/"
  end

  def cache_dir
    "service_icon_uploads/#{model.class.to_s.underscore}/"
  end

  def extension_whitelist
    %w(png jpg)
  end

  def filename
    original_filename if original_filename
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("/" + [version_name, "no_image.png"].compact.join('_'))
  end

  def default_url(*args)
   [version_name, "no_image.png"].compact.join('_')
  end
end

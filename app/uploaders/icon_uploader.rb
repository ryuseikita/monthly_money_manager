class IconUploader < CarrierWave::Uploader::Base
  if Rails.env.development?
    storage :fog
  elsif Rails.env.test?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "icon_uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def cache_dir
    "tmp/icon_uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(png jpg)
  end

  def filename
    original_filename if original_filename
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("/" + [version_name, "default_icon.jpg"].compact.join('_'))
  end

  def default_url(*args)
   [version_name, "default_icon.jpg"].compact.join('_')
  end
end

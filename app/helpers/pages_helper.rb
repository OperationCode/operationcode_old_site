module PagesHelper
  def resource_name
    :veteran
  end

  def resource
    @resource ||= Veteran.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:veteran]
  end
end

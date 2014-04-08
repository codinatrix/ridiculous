class AssetUrl
  
  def self.url
    if Rails.env.production?
      url = Rails.application.config.action_controller.asset_host + '/'
    else Rails.env.development?
      url = '/'
    end
  end

end
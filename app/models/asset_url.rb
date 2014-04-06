class AssetUrl
  
  def self.url
    if Rails.env.production?
      url = 'http://476493692.r.cdn77.net/'
    else Rails.env.development?
      url = '/'
    end
  end

end
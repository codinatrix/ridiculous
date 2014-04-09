#encoding: utf-8
class Supplier < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  has_many :taggings
  has_many :tags, -> { uniq }, through: :taggings
  
  validates :name, :address, :latitude, :longitude, presence: true
  validates :name, uniqueness: true
  validates :name, :address, :website, length: {maximum: 100}
  validates :phone, length: {maximum: 15} #Longest possible phone number (No minimum in case of network shortcuts)
  validate :validate_url
  validate :google_maps_can_read_address
  validate :within_driving_distance, :if => :geocoded?
  
  geocoded_by :address
  before_validation :clear_latlong
  before_validation :geocode
  
  default_scope { order('suppliers.name') }
  
  #
  # Validation methods
  #
  
  def clear_latlong
    self.latitude = ''
    self.longitude = ''
  end
  
  def google_maps_can_read_address
    if self.latitude.blank? || self.longitude.blank?
      
      #Removes unhelpful error messages "Latitude/Longitude can't be blank"
      errors.delete(:latitude)
      errors.delete(:longitude)
      errors.add :address, "couldn't be read by Google Maps."
    end
  end
  
  def within_driving_distance
    if self.distance_from([Rails.configuration.ridiculous_lat, Rails.configuration.ridiculous_lon]) > 200
      # Allows user to keep address without town name unless the town name is necessary for GMaps to understand
      if self.address.include? 'växjö'
        errors.add :address, "is more than 200 miles away."
      else
        self.address << ' växjö'
        self.geocode
        self.within_driving_distance
      end
    end
  end
  
  def validate_url
    begin
      url = URI.parse self.website
      
      if not right_scheme url
        errors.add :website, "is not a valid link. Did you mean " + url.host + '?'
      end
    rescue URI::InvalidURIError
      errors.add :website, 'is not a valid link.'
    end
  end
  
  # Checks if a link has scheme other than http (for example ftp) 
  # Returns true if there is no scheme (for example google.com)
  def right_scheme url
    url.kind_of?(URI::HTTP) or url.kind_of?(URI::HTTPS) or !url.scheme
  end
  
  #
  # Tagging
  #
  
  def tag_list
    self.tags.pluck(:name).join(", ")
  end
  
  # Deletes all tags from Supplier and replaces with new string
  def tag_list=tag_string
    self.tags = tag_string.split(',').collect{|tag| Tag.find_or_create_by(name: tag.strip)}
  end
  
  #
  # Search
  #
  def self.search(query)
    if query.present?
      includes(:tags)
      .where('suppliers.name ilike ? OR suppliers.address ilike ? OR tags.name ilike ? ', "%#{query}%", "%#{query}%", "%#{query}%")
      .references(:tags)
    else
      all
    end
  end
  
end

class Supplier < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  has_many :taggings
  has_many :tags, -> { uniq }, through: :taggings
  
  validates :name, :address, :latitude, :longitude, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 100}
  validates :address, length: {maximum: 100}
  validates :phone, length: {maximum: 15} #Longest possible phone number (No minimum in case of network shortcuts)
  validates :website, length: {maximum: 100}
  validate :google_maps_can_read_address
  validate :within_driving_distance, :if => :geocoded?
  
  geocoded_by :address
  before_validation :clear_latlong
  before_validation :geocode
  
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
      errors.add :base, "Google Maps doesn't understand that address."
    end
  end
  
  def within_driving_distance
    unless self.distance_from([Rails.configuration.ridiculous_lat, Rails.configuration.ridiculous_lon]) < 200 
      errors.add :base, "That address is more than 200 miles away."
    end
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
  
end

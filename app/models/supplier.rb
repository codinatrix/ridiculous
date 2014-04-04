class Supplier < ActiveRecord::Base
  
  has_and_belongs_to_many :tags
  has_many :taggings
  has_many :tags, -> { uniq }, through: :taggings
  
  validates :name, :address, :latitude, :longitude, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 200}
  validates :address, length: {maximum: 500}
  validate :google_maps_can_read_address
  
  geocoded_by :address
  before_validation :geocode
  
  
  def google_maps_can_read_address
    if self.latitude.blank? || self.longitude.blank?
      
      #Removes unhelpful error messages "Latitude/Longitude can't be blank"
      errors.delete(:latitude)
      errors.delete(:longitude)
      errors.add :base, "Google Maps doesn't understand that address."
    end
  end
  

  
end
